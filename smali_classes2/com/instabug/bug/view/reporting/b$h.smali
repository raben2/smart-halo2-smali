.class Lcom/instabug/bug/view/reporting/b$h;
.super Landroid/content/BroadcastReceiver;
.source "BaseReportingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/b;->F()V
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
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$h;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "BaseReportingFragment"

    const-string p2, "Refreshing Attachments"

    .line 1
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$h;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-virtual {p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$h;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->C(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$h;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->D(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/d;->k()V

    :cond_0
    return-void
.end method
