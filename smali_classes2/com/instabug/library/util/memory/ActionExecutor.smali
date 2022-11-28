.class public Lcom/instabug/library/util/memory/ActionExecutor;
.super Ljava/lang/Object;
.source "ActionExecutor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActionExecutor"


# instance fields
.field private final a:[Lcom/instabug/library/util/memory/predicate/Predicate;


# direct methods
.method varargs constructor <init>([Lcom/instabug/library/util/memory/predicate/Predicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/util/memory/ActionExecutor;->a:[Lcom/instabug/library/util/memory/predicate/Predicate;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ActionExecutor"

    const-string v0, "unable to showWarningMessage due to null context"

    .line 5
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/ActionExecutor;->a:[Lcom/instabug/library/util/memory/predicate/Predicate;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/instabug/library/util/memory/predicate/Predicate;->check()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public doAction(Lcom/instabug/library/util/memory/Action;)V
    .locals 2
    .param p1    # Lcom/instabug/library/util/memory/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/util/memory/ActionExecutor;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/instabug/library/util/memory/Action;->onAffirmed()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/instabug/library/util/memory/Action;->onDenied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionExecutor"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public doAction(Lcom/instabug/library/util/memory/Action;Lcom/instabug/library/util/memory/ThrowableAction;)V
    .locals 2
    .param p1    # Lcom/instabug/library/util/memory/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/util/memory/ThrowableAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/util/memory/ActionExecutor;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Lcom/instabug/library/util/memory/Action;->onAffirmed()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1}, Lcom/instabug/library/util/memory/Action;->onDenied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionExecutor"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-interface {p2, p1}, Lcom/instabug/library/util/memory/ThrowableAction;->onDetected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public doActionWithWarning(Ljava/lang/String;Lcom/instabug/library/util/memory/Action;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/util/memory/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/util/memory/ActionExecutor;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/instabug/library/util/memory/Action;->onAffirmed()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/util/memory/ActionExecutor;->a(Ljava/lang/String;)V

    .line 6
    invoke-interface {p2}, Lcom/instabug/library/util/memory/Action;->onDenied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActionExecutor"

    invoke-static {v0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public doActionWithWarning(Ljava/lang/String;Lcom/instabug/library/util/memory/Action;Lcom/instabug/library/util/memory/ThrowableAction;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/util/memory/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/util/memory/ThrowableAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/library/util/memory/ActionExecutor;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p2}, Lcom/instabug/library/util/memory/Action;->onAffirmed()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/util/memory/ActionExecutor;->a(Ljava/lang/String;)V

    .line 16
    invoke-interface {p2}, Lcom/instabug/library/util/memory/Action;->onDenied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActionExecutor"

    invoke-static {v0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-interface {p3, p1}, Lcom/instabug/library/util/memory/ThrowableAction;->onDetected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
