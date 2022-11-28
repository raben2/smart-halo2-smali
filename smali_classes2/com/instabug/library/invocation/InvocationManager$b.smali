.class Lcom/instabug/library/invocation/InvocationManager$b;
.super Ljava/lang/Object;
.source "InvocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/InvocationManager;->notifyPrimaryColorChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/InvocationManager;Lcom/instabug/library/invocation/d/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/invocation/InvocationManager$b;->a:Lcom/instabug/library/invocation/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager$b;->a:Lcom/instabug/library/invocation/d/a;

    invoke-interface {v0}, Lcom/instabug/library/invocation/d/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager$b;->a:Lcom/instabug/library/invocation/d/a;

    invoke-interface {v0}, Lcom/instabug/library/invocation/d/a;->a()V

    return-void
.end method
