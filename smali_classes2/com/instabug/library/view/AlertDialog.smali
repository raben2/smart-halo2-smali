.class public Lcom/instabug/library/view/AlertDialog;
.super Lcom/instabug/library/core/ui/a;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;
    }
.end annotation


# instance fields
.field message:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private onAlertViewsClickListener:Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field tvMessage:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field tvNo:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field tvYes:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->instabug_alert_dialog:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/view/AlertDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget v0, Lcom/instabug/library/R$id;->tvMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/library/view/AlertDialog;->tvMessage:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/instabug/library/R$id;->btnYes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/library/view/AlertDialog;->tvYes:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/instabug/library/R$id;->btnNo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/library/view/AlertDialog;->tvNo:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->tvYes:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->tvYes:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->tvNo:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->tvNo:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->message:Ljava/lang/String;

    const-string v0, "message"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/view/AlertDialog;->message:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 16
    iget-object p2, p0, Lcom/instabug/library/view/AlertDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/instabug/library/R$id;->btnYes:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/library/view/AlertDialog;->onAlertViewsClickListener:Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;->onPositiveButtonClicked()V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/instabug/library/R$id;->btnNo:I

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/view/AlertDialog;->message:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/view/AlertDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/instabug/library/view/AlertDialog;->message:Ljava/lang/String;

    return-void
.end method

.method public setOnAlertViewsClickListener(Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;)V
    .locals 0
    .param p1    # Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/view/AlertDialog;->onAlertViewsClickListener:Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;

    return-void
.end method
