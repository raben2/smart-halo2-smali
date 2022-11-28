.class Lcom/instabug/bug/view/reporting/c$a;
.super Ljava/lang/Object;
.source "BaseReportingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/c;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/e;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/bug/view/reporting/c$a;->a:Lcom/instabug/bug/view/reporting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BaseReportingPresenter"

    const-string v1, "Permission granted"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->d()V

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$a;->a:Lcom/instabug/bug/view/reporting/e;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->d()V

    return-void
.end method
