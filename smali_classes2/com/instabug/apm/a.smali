.class public Lcom/instabug/apm/a;
.super Ljava/lang/Object;
.source "APMImplementation.java"


# instance fields
.field private a:Lcom/instabug/apm/logger/a/a;


# direct methods
.method public constructor <init>(Lcom/instabug/apm/logger/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/instabug/apm/model/ExecutionTrace;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 19
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v2, "Execution trace \"$s\" wasn\'t created. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    const-string v3, "$s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/instabug/apm/c/c;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    iget-object v1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v2, "Execution trace \"$s\" wasn\'t created. Please make sure to enable APM first by following the instructions at this link: https://docs.instabug.com/reference#enable-or-disable-apm"

    const-string v3, "$s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-interface {v1}, Lcom/instabug/apm/c/c;->t()Z

    move-result v1

    if-nez v1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v2, "Execution trace \"$s\" wasn\'t started as the feature seems to be disabled for your Instabug company account. Please contact support for more information."

    const-string v3, "$s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x96

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v2, "Execution trace \"$s\" was truncated as it was too long. Please limit trace names to 150 characters."

    const-string v3, "$s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/apm/logger/a/a;->i(Ljava/lang/String;)V

    .line 33
    :cond_4
    new-instance p1, Lcom/instabug/apm/model/ExecutionTrace;

    invoke-direct {p1, v0}, Lcom/instabug/apm/model/ExecutionTrace;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p1

    .line 34
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Execution trace wasn\'t created. Execution trace name can\'t be empty or null."

    invoke-virtual {p1, v1}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->i()Lcom/instabug/apm/f/a/a;

    move-result-object v0

    const-string v1, "app_launch_thread_executor"

    .line 2
    invoke-static {v1}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/instabug/apm/a$c;

    invoke-direct {v2, p0, v0}, Lcom/instabug/apm/a$c;-><init>(Lcom/instabug/apm/a;Lcom/instabug/apm/f/a/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 35
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    .line 47
    iget-object v1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    sget-object v2, Lcom/instabug/apm/d/a;->a:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "$s1"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->f()I

    move-result v0

    invoke-static {v0}, Lcom/instabug/apm/model/LogLevel$a;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$s2"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Lcom/instabug/apm/logger/a/a;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-interface {v0, p1}, Lcom/instabug/apm/c/c;->b(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    if-eqz p1, :cond_0

    const-string p1, "App launch wasn\'t enabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    goto :goto_0

    :cond_0
    const-string p1, "App launch wasn\'t disabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "App launch wasn\'t enabled. Please make sure to enable APM first by following the instructions at this link: https://docs.instabug.com/reference#enable-or-disable-apm"

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "App launch wasn\'t enabled as the feature seems to be disabled for your Instabug company account. Please contact support for more information."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v0, p1}, Lcom/instabug/apm/c/c;->i(Z)V

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/instabug/apm/a;->a()V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/a;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/apm/a;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/apm/a;->d()V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/apm/a;->e()V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 28
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Custom UI Trace \"$s\" wasn\'t started. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    const-string v2, "$s"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 33
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Custom UI Trace \"$name\" wasn\'t started as it was called from a non-main thread. Please make sure to start Custom UI Traces from the main thread."

    const-string v2, "$name"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_3
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v1

    if-nez v1, :cond_4

    .line 38
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Custom UI Trace \"$s\" wasn\'t started. Please make sure to enable APM first by following the instructions at this link: https://docs.instabug.com/reference#enable-or-disable-apm"

    const-string v2, "$s"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_4
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Custom UI Trace \"$s\" wasn\'t started as the feature seems to be disabled for your Instabug company account. Please contact support for more information."

    const-string v2, "$s"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x96

    if-le v1, v2, :cond_6

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v2, "Custom UI Trace \"$s\" was truncated as it was too long. Please limit trace names to 150 characters."

    const-string v3, "$s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/apm/logger/a/a;->i(Ljava/lang/String;)V

    .line 47
    :cond_6
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 49
    invoke-static {}, Lcom/instabug/apm/e/a;->m()Lcom/instabug/apm/f/e/f/a;

    move-result-object v1

    .line 50
    invoke-interface {v1, v0, p1}, Lcom/instabug/apm/f/e/f/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_7
    :goto_0
    return-void

    .line 51
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Custom UI Trace wasn\'t created. Trace name can\'t be empty or null."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Could not enable Auto UI Trace. Feature is supported on API level 16 and up only."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    if-eqz p1, :cond_1

    const-string p1, "Auto UI Trace wasn\'t enabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    goto :goto_0

    :cond_1
    const-string p1, "Auto UI Trace wasn\'t disabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Auto UI Trace wasn\'t enabled. Please make sure to enable APM first by following the instructions at this link: https://docs.instabug.com/reference#enable-or-disable-apm"

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->k()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Auto UI Trace wasn\'t enabled as the feature seems to be disabled for your Instabug company account. Please contact support for more information."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-interface {v0, p1}, Lcom/instabug/apm/c/c;->g(Z)V

    if-nez p1, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/instabug/apm/a;->e()V

    :cond_5
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/instabug/apm/e/a;->u()Lcom/instabug/apm/f/b/a;

    move-result-object v0

    const-string v1, "execution_traces_thread_executor"

    .line 13
    invoke-static {v1}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/instabug/apm/a$b;

    invoke-direct {v2, p0, v0}, Lcom/instabug/apm/a$b;-><init>(Lcom/instabug/apm/a;Lcom/instabug/apm/f/b/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    if-eqz p1, :cond_0

    const-string p1, "APM wasn\'t enabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    goto :goto_0

    :cond_0
    const-string p1, "APM wasn\'t disabled. Please make sure to initialize the Instabug SDK first by following the instructions at this link: https://docs.instabug.com/reference#showing-and-manipulating-the-invocation"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->y()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v0, "APM wasn\'t enabled as it seems to be disabled for your Instabug company account. Please, contact support to switch it on for you."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v0, p1}, Lcom/instabug/apm/c/c;->e(Z)V

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/instabug/apm/a;->b()V

    .line 11
    invoke-static {}, Lcom/instabug/apm/e/a;->M()V

    :cond_3
    :goto_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->y()Lcom/instabug/apm/f/c/a;

    move-result-object v0

    const-string v1, "network_log_thread_executor"

    .line 2
    invoke-static {v1}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/instabug/apm/a$a;

    invoke-direct {v2, p0, v0}, Lcom/instabug/apm/a$a;-><init>(Lcom/instabug/apm/a;Lcom/instabug/apm/f/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->K()Lcom/instabug/apm/f/e/c;

    move-result-object v0

    const-string v1, "ui_trace_thread_executor"

    .line 3
    invoke-static {v1}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/instabug/apm/a$d;

    invoke-direct {v2, p0, v0}, Lcom/instabug/apm/a$d;-><init>(Lcom/instabug/apm/a;Lcom/instabug/apm/f/e/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/apm/e/a;->m()Lcom/instabug/apm/f/e/f/a;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/instabug/apm/f/e/f/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0, v1}, Lcom/instabug/apm/f/e/f/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/instabug/apm/a;->a:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Custom UI Trace wasn\'t ended. Please make sure to start a UI Trace first by following the instructions at this link: https://docs.instabug.com/reference#start-ui-trace"

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
