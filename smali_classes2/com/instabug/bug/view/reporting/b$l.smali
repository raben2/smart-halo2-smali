.class Lcom/instabug/bug/view/reporting/b$l;
.super Lcom/instabug/library/util/SimpleTextWatcher;
.source "BaseReportingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/b;->initViews(Landroid/view/View;Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$l;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-direct {p0}, Lcom/instabug/library/util/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$l;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-virtual {p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$l;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->e(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$l;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->f(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$l;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->g(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$l;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->f(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/bug/view/reporting/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
