.class Lcom/instabug/apm/APMPlugin$b;
.super Ljava/lang/Object;
.source "APMPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/APMPlugin;->clearInvalidCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/f/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/apm/APMPlugin;Lcom/instabug/apm/f/c/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/apm/APMPlugin$b;->a:Lcom/instabug/apm/f/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/APMPlugin$b;->a:Lcom/instabug/apm/f/c/a;

    invoke-interface {v0}, Lcom/instabug/apm/f/c/a;->b()V

    :cond_0
    return-void
.end method
