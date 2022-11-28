.class Lcom/instabug/library/invocation/invocationdialog/g$a;
.super Ljava/lang/Object;
.source "InstabugDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/invocationdialog/g;->initViews(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/invocationdialog/g;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/invocationdialog/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-static {p1}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-static {p1}, Lcom/instabug/library/invocation/invocationdialog/g;->b(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/g$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-static {p1}, Lcom/instabug/library/invocation/invocationdialog/g;->b(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/g$d;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-static {v0}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/library/invocation/invocationdialog/g$d;->removeScreenshotIfNeeded(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-static {p1}, Lcom/instabug/library/invocation/invocationdialog/g;->b(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/g$d;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    .line 4
    invoke-static {v0}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    sget v3, Lcom/instabug/library/R$id;->instabug_main_prompt_container:I

    .line 5
    invoke-static {v2, v3}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Lcom/instabug/library/invocation/invocationdialog/g;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/g$a;->a:Lcom/instabug/library/invocation/invocationdialog/g;

    sget v3, Lcom/instabug/library/R$id;->instabug_pbi_container:I

    .line 6
    invoke-static {v2, v3}, Lcom/instabug/library/invocation/invocationdialog/g;->b(Lcom/instabug/library/invocation/invocationdialog/g;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/instabug/library/invocation/invocationdialog/g$d;->onDialogItemClicked(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;[Landroid/view/View;)V

    :cond_0
    return-void
.end method
