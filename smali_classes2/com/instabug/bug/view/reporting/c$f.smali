.class Lcom/instabug/bug/view/reporting/c$f;
.super Ljava/lang/Object;
.source "BaseReportingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/e;

.field final synthetic b:Lcom/instabug/bug/view/reporting/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    iput-object p2, p0, Lcom/instabug/bug/view/reporting/c$f;->a:Lcom/instabug/bug/view/reporting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/c;->d(Lcom/instabug/bug/view/reporting/c;)Lcom/instabug/bug/view/reporting/c$h;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/view/reporting/c$h;->SEND_BUG:Lcom/instabug/bug/view/reporting/c$h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    .line 2
    invoke-static {v0}, Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/c;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$f;->a:Lcom/instabug/bug/view/reporting/e;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->a()V

    .line 6
    sget-object v0, Lcom/instabug/bug/view/reporting/c$g;->a:[I

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    invoke-static {v1}, Lcom/instabug/bug/view/reporting/c;->d(Lcom/instabug/bug/view/reporting/c;)Lcom/instabug/bug/view/reporting/c$h;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/c;->m()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/c;->b()V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$f;->b:Lcom/instabug/bug/view/reporting/c;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/c;->g()V

    :goto_0
    return-void
.end method
