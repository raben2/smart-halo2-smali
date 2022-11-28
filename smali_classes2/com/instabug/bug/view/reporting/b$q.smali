.class Lcom/instabug/bug/view/reporting/b$q;
.super Ljava/lang/Object;
.source "BaseReportingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$q;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->l()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowScreenRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$q;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->q(Lcom/instabug/bug/view/reporting/b;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$q;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->n(Lcom/instabug/bug/view/reporting/b;)V

    goto :goto_0

    :cond_1
    const-string v0, "BaseReportingFragment"

    const-string v1, "Bug is null"

    .line 9
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
