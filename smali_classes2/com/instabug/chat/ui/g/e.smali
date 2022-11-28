.class Lcom/instabug/chat/ui/g/e;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "ChatsPresenter.java"

# interfaces
.implements Lcom/instabug/chat/ui/g/b;
.implements Lcom/instabug/library/internal/storage/cache/CacheChangedListener;
.implements Lcom/instabug/chat/synchronization/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/chat/ui/g/c;",
        ">;",
        "Lcom/instabug/chat/ui/g/b;",
        "Lcom/instabug/library/internal/storage/cache/CacheChangedListener<",
        "Lcom/instabug/chat/e/b;",
        ">;",
        "Lcom/instabug/chat/synchronization/b;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/subjects/PublishSubject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private a(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/ui/g/e;->a:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/g/e;->m()V

    return-void
.end method

.method private declared-synchronized j()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getValidChats()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    new-instance v1, Lcom/instabug/chat/e/b$b;

    invoke-direct {v1}, Lcom/instabug/chat/e/b$b;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 4

    .line 1
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/ui/g/e;->a:Lio/reactivex/subjects/PublishSubject;

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/subjects/PublishSubject;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/ui/g/e$b;

    invoke-direct {v1, p0}, Lcom/instabug/chat/ui/g/e$b;-><init>(Lcom/instabug/chat/ui/g/e;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lcom/instabug/chat/ui/g/e;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/g/e;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/g/e;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/g/e;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/instabug/chat/e/b$b;

    invoke-direct {v1}, Lcom/instabug/chat/e/b$b;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/ui/g/c;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lcom/instabug/chat/ui/g/c;->a(Ljava/util/ArrayList;)V

    .line 7
    invoke-interface {v1}, Lcom/instabug/chat/ui/g/c;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/e/b;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/instabug/chat/ui/g/e;->a(J)V

    return-void
.end method

.method public a(Lcom/instabug/chat/e/b;Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/ui/g/e;->a(J)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/g/e;->k()V

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "chats_memory_cache"

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->subscribe(Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/CacheChangedListener;)Z

    .line 3
    invoke-static {}, Lcom/instabug/chat/synchronization/a;->b()Lcom/instabug/chat/synchronization/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/synchronization/a;->a(Lcom/instabug/chat/synchronization/b;)V

    .line 4
    invoke-direct {p0}, Lcom/instabug/chat/ui/g/e;->m()V

    return-void
.end method

.method public b(Lcom/instabug/chat/e/b;)V
    .locals 2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/instabug/chat/ui/g/e;->a(J)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "chats_memory_cache"

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->unSubscribe(Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/CacheChangedListener;)Z

    .line 2
    invoke-static {}, Lcom/instabug/chat/synchronization/a;->b()Lcom/instabug/chat/synchronization/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/synchronization/a;->b(Lcom/instabug/chat/synchronization/b;)V

    .line 3
    invoke-direct {p0}, Lcom/instabug/chat/ui/g/e;->l()V

    return-void
.end method

.method public onCacheInvalidated()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/instabug/chat/ui/g/e;->a(J)V

    return-void
.end method

.method public bridge synthetic onCachedItemAdded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/g/e;->a(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public bridge synthetic onCachedItemRemoved(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/g/e;->b(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public bridge synthetic onCachedItemUpdated(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    check-cast p2, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/chat/ui/g/e;->a(Lcom/instabug/chat/e/b;Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public onNewMessagesReceived(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_RETURN_ANNOTATION"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/g/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/instabug/chat/ui/g/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object p1

    .line 7
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/ui/g/e$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/chat/ui/g/e$a;-><init>(Lcom/instabug/chat/ui/g/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/PresentationManager;->show(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
