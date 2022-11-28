.class Lcom/instabug/chat/ui/f/e;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "ChatPresenter.java"

# interfaces
.implements Lcom/instabug/chat/ui/f/b;
.implements Lcom/instabug/library/internal/storage/cache/CacheChangedListener;
.implements Lcom/instabug/chat/synchronization/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/chat/ui/f/c;",
        ">;",
        "Lcom/instabug/chat/ui/f/b;",
        "Lcom/instabug/library/internal/storage/cache/CacheChangedListener<",
        "Lcom/instabug/chat/e/b;",
        ">;",
        "Lcom/instabug/chat/synchronization/b;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/reactivex/disposables/Disposable;

.field private c:Lio/reactivex/disposables/Disposable;

.field private d:Lcom/instabug/chat/e/b;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/f/e;)Lcom/instabug/chat/e/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    return-object p0
.end method

.method private a(Lcom/instabug/chat/ui/f/c;Landroid/content/Intent;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 199
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 200
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getFileNameAndSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const-string v2, "0"

    .line 204
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 207
    invoke-static {v4}, Lcom/instabug/library/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 209
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    const-string p1, "ChatPresenter"

    const-string p2, "file extension is null"

    .line 212
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_2
    invoke-static {v1}, Lcom/instabug/library/util/FileUtils;->isImageExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/e;->h()V

    .line 219
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2, v4}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getFileFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 222
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "image_gallery"

    invoke-virtual {p0, p1, p2}, Lcom/instabug/chat/ui/f/e;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/a;)V

    goto/16 :goto_0

    .line 224
    :cond_3
    invoke-static {v1}, Lcom/instabug/library/util/FileUtils;->isVideoExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v5, v0, v2

    if-lez v5, :cond_5

    .line 228
    invoke-interface {p1}, Lcom/instabug/chat/ui/f/c;->h()V

    const-string p1, "ChatPresenter"

    const-string p2, "video size exceeded the limit"

    .line 229
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-class p1, Lcom/instabug/chat/ChatPlugin;

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ChatPlugin;

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 233
    invoke-virtual {p1, p2}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_4
    return-void

    .line 238
    :cond_5
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0, p2, v4}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getFileFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 241
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/VideoManipulationUtils;->extractVideoDuration(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    .line 243
    invoke-interface {p1}, Lcom/instabug/chat/ui/f/c;->d()V

    const-string p1, "ChatPresenter"

    const-string v0, "video length exceeded the limit"

    .line 244
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "ChatPresenter"

    const-string p2, "file deleted"

    .line 247
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/e;->h()V

    .line 251
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Landroid/net/Uri;)Lcom/instabug/chat/e/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/a;)V

    goto :goto_0

    :cond_7
    const-string p1, "ChatPresenter"

    const-string p2, "video file is null"

    .line 254
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChatPresenter"

    invoke-static {v0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/f/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/reactivex/disposables/Disposable;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/instabug/chat/ui/f/c;Landroid/content/Intent;)V
    .locals 6
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getGalleryImagePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_1
    invoke-static {v0}, Lcom/instabug/library/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getNewFileAttachmentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 20
    :cond_2
    invoke-static {p2}, Lcom/instabug/library/util/FileUtils;->isImageExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/e;->h()V

    const-string p1, "image_gallery"

    .line 22
    invoke-virtual {p0, v1, p1}, Lcom/instabug/chat/ui/f/e;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/a;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {p2}, Lcom/instabug/library/util/FileUtils;->isVideoExtension(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 24
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long p2, v2, v4

    if-lez p2, :cond_4

    .line 27
    invoke-interface {p1}, Lcom/instabug/chat/ui/f/c;->h()V

    goto :goto_0

    .line 28
    :cond_4
    invoke-static {v0}, Lcom/instabug/library/util/VideoManipulationUtils;->extractVideoDuration(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long p2, v2, v4

    if-lez p2, :cond_5

    .line 29
    invoke-interface {p1}, Lcom/instabug/chat/ui/f/c;->d()V

    goto :goto_0

    .line 31
    :cond_5
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/e;->h()V

    .line 32
    invoke-virtual {p0, v1}, Lcom/instabug/chat/ui/f/e;->a(Landroid/net/Uri;)Lcom/instabug/chat/e/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/a;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/instabug/chat/e/g;

    invoke-direct {v1}, Lcom/instabug/chat/e/g;-><init>()V

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/d;

    invoke-virtual {v2}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/chat/e/g;->a(Ljava/lang/String;)V

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/d;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/chat/e/g;->b(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/chat/e/g;->a(J)V

    .line 40
    invoke-static {}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->getInstance()Lcom/instabug/chat/cache/ReadQueueCacheManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->add(Lcom/instabug/chat/e/g;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/instabug/chat/e/b;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p1}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/instabug/chat/e/b;

    invoke-direct {p1}, Lcom/instabug/chat/e/b;-><init>()V

    :goto_0
    return-object p1
.end method

.method private d(Lcom/instabug/chat/e/b;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/chat/ui/f/e;->b(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/e/d$a;

    invoke-direct {v1}, Lcom/instabug/chat/e/d$a;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/chat/ui/f/c;->a(Ljava/util/List;)V

    .line 10
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->p()V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->c(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->d(Lcom/instabug/chat/e/b;)V

    :cond_0
    return-void
.end method

.method private k()Lcom/instabug/chat/e/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/chat/e/a;

    invoke-direct {v0}, Lcom/instabug/chat/e/a;-><init>()V

    const-string v1, "offline"

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/a;->d(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    return-object v0
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getValidChats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->o()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/instabug/chat/settings/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->j()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isScreenshotByMediaProjectionEnabled()Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v0

    sget-object v1, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    sget-object v1, Lcom/instabug/chat/e/b$a;->READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->c:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/instabug/chat/ui/f/e;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;->getInstance()Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/ui/f/e$b;

    invoke-direct {v1, p0}, Lcom/instabug/chat/ui/f/e$b;-><init>(Lcom/instabug/chat/ui/f/e;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/ui/f/e;->c:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/ui/f/e;->a:Lio/reactivex/subjects/PublishSubject;

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

    new-instance v1, Lcom/instabug/chat/ui/f/e$a;

    invoke-direct {v1, p0}, Lcom/instabug/chat/ui/f/e$a;-><init>(Lcom/instabug/chat/ui/f/e;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/ui/f/e;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->c:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/instabug/chat/ui/f/e;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->b:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/instabug/chat/ui/f/e;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/instabug/chat/e/a;
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->k()Lcom/instabug/chat/e/a;

    move-result-object v0

    const-string v1, "video_gallery"

    .line 139
    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/a;->e(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/chat/e/a;->b(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const/4 p1, 0x1

    .line 141
    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/a;->a(Z)Lcom/instabug/chat/e/a;

    return-object v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/chat/e/a;
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->k()Lcom/instabug/chat/e/a;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p2}, Lcom/instabug/chat/e/a;->e(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object p2

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/instabug/chat/e/a;->b(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object p2

    .line 137
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/chat/e/a;->c(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/instabug/chat/e/a;)Lcom/instabug/chat/e/d;
    .locals 1

    const-string v0, ""

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/instabug/chat/ui/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object p1

    .line 133
    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/a;)Lcom/instabug/chat/e/d;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/chat/e/d;
    .locals 4

    .line 124
    new-instance v0, Lcom/instabug/chat/e/d;

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instabug/chat/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/d;->b(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object p1

    .line 126
    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/d;->a(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInSeconds()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/instabug/chat/e/d;->a(J)Lcom/instabug/chat/e/d;

    move-result-object p1

    .line 128
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInSeconds()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/instabug/chat/e/d;->b(J)Lcom/instabug/chat/e/d;

    move-result-object p1

    sget-object p2, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    .line 129
    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$b;)Lcom/instabug/chat/e/d;

    move-result-object p1

    .line 130
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getIdentifiedUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/d;->e(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object p1

    sget-object p2, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SENT:Lcom/instabug/chat/e/d$c;

    .line 131
    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/c;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    .line 5
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/chat/e/a;

    .line 7
    new-instance v4, Lcom/instabug/chat/e/c;

    invoke-direct {v4}, Lcom/instabug/chat/e/c;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/chat/e/c;->a(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/chat/e/c;->c(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v4

    .line 10
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/instabug/chat/e/c;->a(J)Lcom/instabug/chat/e/c;

    move-result-object v4

    .line 11
    invoke-virtual {v3}, Lcom/instabug/chat/e/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/chat/e/c;->d(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v4

    .line 12
    invoke-virtual {v3}, Lcom/instabug/chat/e/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/chat/e/c;->b(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v4

    .line 13
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/instabug/chat/e/c;->a(Z)Lcom/instabug/chat/e/c;

    move-result-object v4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/instabug/chat/e/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v3}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v6, "video_gallery"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_1
    const-string v6, "extra_video"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_2
    const-string v6, "extra_image"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v6, "image"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_4
    const-string v6, "audio"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_5
    const-string v6, "image_gallery"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    :cond_1
    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 28
    :pswitch_0
    sget-object v3, Lcom/instabug/chat/e/c$b;->VIDEO:Lcom/instabug/chat/e/c$b;

    invoke-virtual {v4, v3}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$b;)Lcom/instabug/chat/e/c;

    goto :goto_3

    .line 29
    :pswitch_1
    sget-object v3, Lcom/instabug/chat/e/c$b;->AUDIO:Lcom/instabug/chat/e/c$b;

    invoke-virtual {v4, v3}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$b;)Lcom/instabug/chat/e/c;

    .line 30
    sget-object v3, Lcom/instabug/chat/e/c$a;->NONE:Lcom/instabug/chat/e/c$a;

    invoke-virtual {v4, v3}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$a;)Lcom/instabug/chat/e/c;

    goto :goto_3

    .line 31
    :pswitch_2
    sget-object v3, Lcom/instabug/chat/e/c$b;->IMAGE:Lcom/instabug/chat/e/c$b;

    invoke-virtual {v4, v3}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$b;)Lcom/instabug/chat/e/c;

    .line 45
    :cond_2
    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 50
    :cond_3
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 51
    new-instance v2, Lcom/instabug/chat/e/c;

    invoke-direct {v2}, Lcom/instabug/chat/e/c;-><init>()V

    .line 52
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/chat/e/c;->a(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v3

    .line 53
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Lcom/instabug/chat/e/c;->c(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v3

    .line 56
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instabug/chat/e/c;->a(J)Lcom/instabug/chat/e/c;

    move-result-object v3

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/instabug/chat/e/c;->a(Z)Lcom/instabug/chat/e/c;

    move-result-object v3

    sget-object v4, Lcom/instabug/chat/e/c$b;->MESSAGE:Lcom/instabug/chat/e/c$b;

    .line 57
    invoke-virtual {v3, v4}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$b;)Lcom/instabug/chat/e/c;

    .line 58
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 59
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/instabug/chat/e/c;->a(Ljava/util/ArrayList;)V

    .line 61
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_5
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    new-instance v2, Lcom/instabug/chat/e/c;

    invoke-direct {v2}, Lcom/instabug/chat/e/c;-><init>()V

    .line 67
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/chat/e/c;->a(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v3

    .line 68
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Lcom/instabug/chat/e/c;->c(Ljava/lang/String;)Lcom/instabug/chat/e/c;

    move-result-object v3

    .line 71
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instabug/chat/e/c;->a(J)Lcom/instabug/chat/e/c;

    move-result-object v3

    .line 72
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v4

    .line 73
    invoke-virtual {v3, v4}, Lcom/instabug/chat/e/c;->a(Z)Lcom/instabug/chat/e/c;

    move-result-object v3

    sget-object v4, Lcom/instabug/chat/e/c$b;->MESSAGE:Lcom/instabug/chat/e/c$b;

    .line 74
    invoke-virtual {v3, v4}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$b;)Lcom/instabug/chat/e/c;

    .line 75
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/instabug/chat/e/c;->a(Ljava/util/ArrayList;)V

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x318ec392 -> :sswitch_5
        0x58d9bd6 -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0x6543546c -> :sswitch_2
        0x65f8bf8c -> :sswitch_1
        0x6d19878e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->f()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/e;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_5

    .line 162
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xa1

    const/4 v3, -0x1

    if-eq p1, v2, :cond_2

    const/16 v0, 0x7ee

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf32

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_5

    .line 180
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->setResultDataIntent(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0, p3}, Lcom/instabug/chat/ui/f/e;->a(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_5

    const-string p1, "isPermissionGranted"

    const/4 p2, 0x0

    .line 186
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/e;->j()V

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_4

    if-eqz p3, :cond_4

    .line 188
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 189
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_3

    .line 190
    invoke-direct {p0, v0, p3}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/ui/f/c;Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/instabug/chat/ui/f/e;->b(Lcom/instabug/chat/ui/f/c;Landroid/content/Intent;)V

    .line 196
    :cond_4
    :goto_0
    const-class p1, Lcom/instabug/chat/ChatPlugin;

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ChatPlugin;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 198
    invoke-virtual {p1, p2}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ui/f/c;

    .line 151
    invoke-static {}, Lcom/instabug/chat/g/a;->b()Lcom/instabug/chat/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/chat/g/a;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    sget-object v1, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->finishActivity()V

    .line 157
    :cond_0
    const-class p1, Lcom/instabug/chat/ChatPlugin;

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ChatPlugin;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 159
    invoke-virtual {p1, v0}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/chat/e/a;)V
    .locals 4

    .line 92
    invoke-virtual {p1}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/instabug/chat/e/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "video_gallery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "extra_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "extra_image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "image_gallery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    .line 113
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instabug/chat/ui/f/e;->a(Ljava/lang/String;Lcom/instabug/chat/e/a;)Lcom/instabug/chat/e/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/d;)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    .line 116
    invoke-static {}, Lcom/instabug/chat/settings/a;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instabug/chat/ui/f/e;->a(Ljava/lang/String;Lcom/instabug/chat/e/a;)Lcom/instabug/chat/e/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/d;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 120
    new-instance v1, Ljava/io/File;

    .line 121
    invoke-virtual {p1}, Lcom/instabug/chat/e/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-interface {v0, v1, p1}, Lcom/instabug/chat/ui/f/c;->a(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x318ec392 -> :sswitch_4
        0x58d9bd6 -> :sswitch_3
        0x6543546c -> :sswitch_2
        0x65f8bf8c -> :sswitch_1
        0x6d19878e -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 259
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/instabug/chat/e/b;Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 260
    invoke-virtual {p2}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/instabug/chat/e/d;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/instabug/chat/ui/f/e;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    sget-object v0, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {p1, v0}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 83
    :cond_0
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {p1, v0, v1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->saveCacheToDisk()V

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ui/f/c;

    if-eqz p1, :cond_2

    .line 90
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/network/b;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public b(Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->c(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    .line 3
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->l()V

    .line 4
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->m()V

    .line 5
    iget-object p1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/e;->d(Lcom/instabug/chat/e/b;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->c(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v0

    sget-object v1, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    if-eq v0, v1, :cond_0

    .line 6
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->delete(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Lcom/instabug/chat/e/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->j()V

    .line 2
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()Lcom/instabug/chat/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    return-object v0
.end method

.method public e()V
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
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->r()V

    .line 4
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->s()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->o()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->q()V

    .line 3
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "chats_memory_cache"

    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->subscribe(Ljava/lang/String;Lcom/instabug/library/internal/storage/cache/CacheChangedListener;)Z

    .line 4
    invoke-static {}, Lcom/instabug/chat/synchronization/a;->b()Lcom/instabug/chat/synchronization/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/synchronization/a;->a(Lcom/instabug/chat/synchronization/b;)V

    .line 5
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/e;->p()V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    const-class v0, Lcom/instabug/chat/ChatPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ChatPlugin;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/instabug/chat/ui/f/d;

    const-string v2, "pick image from gallery"

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    sget-object v1, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 7
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/instabug/chat/ui/f/c;->r()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setProcessingForeground(Z)V

    .line 2
    const-class v0, Lcom/instabug/chat/ChatPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ChatPlugin;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    if-eqz v1, :cond_0

    .line 5
    const-class v1, Lcom/instabug/chat/ui/f/d;

    const-string v2, "take extra screenshot"

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    .line 7
    iget-object v1, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    sget-object v2, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v1, v2}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 8
    invoke-static {}, Lcom/instabug/chat/h/a;->a()Lcom/instabug/chat/h/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    .line 9
    invoke-virtual {v2}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/instabug/chat/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->finishActivity()V

    :cond_0
    return-void
.end method

.method public onCacheInvalidated()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chats cache was invalidated, Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCachedItemAdded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public bridge synthetic onCachedItemRemoved(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e;->b(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public bridge synthetic onCachedItemUpdated(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    check-cast p2, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/e/b;Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public onNewMessagesReceived(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    check-cast v0, Lcom/instabug/chat/ui/f/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/d;

    .line 6
    invoke-virtual {v2}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {v4}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object v2

    .line 9
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;)V

    .line 12
    iget-object v2, p0, Lcom/instabug/chat/ui/f/e;->d:Lcom/instabug/chat/e/b;

    invoke-virtual {p0, v2}, Lcom/instabug/chat/ui/f/e;->c(Lcom/instabug/chat/e/b;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method
