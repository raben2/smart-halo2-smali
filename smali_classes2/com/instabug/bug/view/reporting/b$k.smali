.class Lcom/instabug/bug/view/reporting/b$k;
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
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$k;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-direct {p0}, Lcom/instabug/library/util/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$k;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->H(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$k;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->H(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$k;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->c(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$k;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->d(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/reporting/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
