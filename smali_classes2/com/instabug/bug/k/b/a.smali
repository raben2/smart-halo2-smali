.class public Lcom/instabug/bug/k/b/a;
.super Ljava/lang/Object;
.source "ActivityViewInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/k/b/a$h;
    }
.end annotation


# static fields
.field private static a:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static a(Landroid/app/Activity;)I
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_0
    const/16 v0, 0x280

    if-le p0, v0, :cond_1

    .line 6
    div-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 2
    sput-object p0, Lcom/instabug/bug/k/b/a;->a:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/bug/k/b/a;->b(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;
    .locals 4

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    const-string v1, "icon"

    .line 129
    :try_start_2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->k()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    const-string v1, "type"

    .line 131
    :try_start_3
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->i()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_3

    const-string v1, "properties"

    .line 133
    :try_start_4
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->a()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_4

    const-string v1, "frame"

    .line 135
    :try_start_5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->f()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/bug/k/b/b;

    .line 139
    invoke-static {v2}, Lcom/instabug/bug/k/b/a;->b(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    const-string p0, "nodes"

    .line 141
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert seed view hierarchy to json got json exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time in MS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityViewInspector"

    invoke-static {v2, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static declared-synchronized b(Landroid/app/Activity;)V
    .locals 9

    const-class v0, Lcom/instabug/bug/k/b/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    sget-object v2, Lcom/instabug/bug/model/a$c;->IN_PROGRESS:Lcom/instabug/bug/model/a$c;

    invoke-virtual {v1, v2}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$c;)Lcom/instabug/bug/model/a;

    .line 4
    :cond_0
    new-instance v1, Lcom/instabug/bug/k/b/a$h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instabug/bug/k/b/a$h;-><init>(Lcom/instabug/bug/k/b/a$a;)V

    .line 5
    invoke-static {}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->getInstance()Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    move-result-object v2

    sget-object v3, Lcom/instabug/bug/k/b/c$b;->STARTED:Lcom/instabug/bug/k/b/c$b;

    invoke-virtual {v2, v3}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inspect activity view start, time in MS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityViewInspector"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/instabug/bug/k/b/b;

    invoke-direct {v2}, Lcom/instabug/bug/k/b/b;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/bug/k/b/b;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {p0}, Lcom/instabug/bug/k/b/a;->a(Landroid/app/Activity;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/instabug/bug/k/b/c;->a(Landroid/app/Activity;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/bug/k/b/b;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inspect activity frame got error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time in MS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityViewInspector"

    .line 14
    invoke-static {v5, v4, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [I

    sget v4, Lcom/instabug/library/R$id;->instabug_decor_view:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/instabug/library/R$id;->instabug_in_app_notification:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/instabug/library/R$id;->instabug_intro_dialog:I

    const/4 v7, 0x2

    aput v4, v3, v7

    .line 18
    invoke-static {p0, v3}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getRootViews(Landroid/app/Activity;[I)Ljava/util/List;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "root views size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ActivityViewInspector"

    invoke-static {v7, v4}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 21
    invoke-virtual {v2, v6}, Lcom/instabug/bug/k/b/b;->a(Z)V

    .line 23
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 26
    new-instance v7, Lcom/instabug/bug/k/b/b;

    invoke-direct {v7}, Lcom/instabug/bug/k/b/b;-><init>()V

    .line 27
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/instabug/bug/k/b/b;->b(Ljava/lang/String;)V

    .line 28
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {v8}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/instabug/bug/k/b/b;->a(Landroid/view/View;)V

    .line 29
    invoke-virtual {v7, v6}, Lcom/instabug/bug/k/b/b;->b(Z)V

    .line 30
    invoke-static {p0}, Lcom/instabug/bug/k/b/a;->a(Landroid/app/Activity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/instabug/bug/k/b/b;->a(I)V

    .line 32
    invoke-static {v7}, Lcom/instabug/bug/k/b/c;->c(Lcom/instabug/bug/k/b/b;)Lio/reactivex/Observable;

    move-result-object v7

    .line 33
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    :cond_2
    sget-object v3, Lcom/instabug/bug/k/b/a;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v3, :cond_3

    .line 37
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 38
    sget-object v3, Lcom/instabug/bug/k/b/a;->a:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 40
    :cond_3
    invoke-static {v4}, Lio/reactivex/Observable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/instabug/bug/k/b/a$g;

    invoke-direct {v4, v2, p0}, Lcom/instabug/bug/k/b/a$g;-><init>(Lcom/instabug/bug/k/b/b;Landroid/app/Activity;)V

    .line 41
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/instabug/bug/k/b/a$f;

    invoke-direct {v4, p0}, Lcom/instabug/bug/k/b/a$f;-><init>(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/instabug/bug/k/b/a$e;

    invoke-direct {v4, v1}, Lcom/instabug/bug/k/b/a$e;-><init>(Lcom/instabug/bug/k/b/a$h;)V

    .line 66
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/instabug/bug/k/b/a$d;

    invoke-direct {v4, v1, v2}, Lcom/instabug/bug/k/b/a$d;-><init>(Lcom/instabug/bug/k/b/a$h;Lcom/instabug/bug/k/b/b;)V

    .line 81
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/instabug/bug/k/b/a$c;

    invoke-direct {v4, v1}, Lcom/instabug/bug/k/b/a$c;-><init>(Lcom/instabug/bug/k/b/a$h;)V

    .line 104
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/instabug/bug/k/b/a$b;

    invoke-direct {v4, v1, p0}, Lcom/instabug/bug/k/b/a$b;-><init>(Lcom/instabug/bug/k/b/a$h;Landroid/app/Activity;)V

    .line 112
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p0

    .line 121
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 122
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/instabug/bug/k/b/a$a;

    invoke-direct {v1, v2}, Lcom/instabug/bug/k/b/a$a;-><init>(Lcom/instabug/bug/k/b/b;)V

    .line 123
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    sput-object p0, Lcom/instabug/bug/k/b/a;->a:Lio/reactivex/disposables/Disposable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
