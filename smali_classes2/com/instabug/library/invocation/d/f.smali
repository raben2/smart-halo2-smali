.class public Lcom/instabug/library/invocation/d/f;
.super Ljava/lang/Object;
.source "ShakeInvoker.java"

# interfaces
.implements Lcom/instabug/library/invocation/d/a;
.implements Lcom/instabug/library/util/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/invocation/d/a<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/instabug/library/util/i$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/library/util/i;

.field private b:Lcom/instabug/library/invocation/a;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instabug/library/invocation/a;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/invocation/d/f;->b:Lcom/instabug/library/invocation/a;

    .line 3
    new-instance p2, Lcom/instabug/library/util/i;

    invoke-direct {p2, p1, p0}, Lcom/instabug/library/util/i;-><init>(Landroid/content/Context;Lcom/instabug/library/util/i$a;)V

    iput-object p2, p0, Lcom/instabug/library/invocation/d/f;->a:Lcom/instabug/library/util/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/f;->a:Lcom/instabug/library/util/i;

    invoke-virtual {v0}, Lcom/instabug/library/util/i;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/f;->c:Z

    const-string v0, "ShakeInvoker"

    const-string v1, "listen"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/f;->a:Lcom/instabug/library/util/i;

    invoke-virtual {v0, p1}, Lcom/instabug/library/util/i;->a(I)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/f;->c:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/f;->a:Lcom/instabug/library/util/i;

    invoke-virtual {v0}, Lcom/instabug/library/util/i;->b()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/f;->c:Z

    const-string v0, "ShakeInvoker"

    const-string v1, "sleep"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "ShakeInvoker"

    const-string v1, "Shake detected, invoking SDK"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/invocation/InvocationManager;->setLastUsedInvoker(Lcom/instabug/library/invocation/d/a;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/d/f;->b:Lcom/instabug/library/invocation/a;

    invoke-interface {v0}, Lcom/instabug/library/invocation/a;->a()V

    return-void
.end method
