.class Lcom/instabug/bug/view/reporting/b$j;
.super Ljava/lang/Object;
.source "BaseReportingFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/view/reporting/b;
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
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->a(Lcom/instabug/bug/view/reporting/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v4

    const/4 v4, 0x1

    cmpl-double v5, v2, v0

    if-lez v5, :cond_0

    .line 14
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0, v4}, Lcom/instabug/bug/view/reporting/b;->a(Lcom/instabug/bug/view/reporting/b;Z)Z

    .line 15
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->l(Lcom/instabug/bug/view/reporting/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 16
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0, v4}, Lcom/instabug/bug/view/reporting/b;->b(Lcom/instabug/bug/view/reporting/b;Z)Z

    .line 17
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    sget v2, Lcom/instabug/bug/R$id;->arrow_handler:I

    invoke-static {v0, v2}, Lcom/instabug/bug/view/reporting/b;->e(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    sget v2, Lcom/instabug/bug/R$id;->arrow_handler:I

    invoke-static {v0, v2}, Lcom/instabug/bug/view/reporting/b;->f(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/bug/view/reporting/b;->b(Lcom/instabug/bug/view/reporting/b;Z)Z

    .line 22
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0, v1}, Lcom/instabug/bug/view/reporting/b;->a(Lcom/instabug/bug/view/reporting/b;Z)Z

    .line 23
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->G(Lcom/instabug/bug/view/reporting/b;)I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    sget v2, Lcom/instabug/bug/R$id;->arrow_handler:I

    invoke-static {v0, v2}, Lcom/instabug/bug/view/reporting/b;->g(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$j;->a:Lcom/instabug/bug/view/reporting/b;

    sget v2, Lcom/instabug/bug/R$id;->arrow_handler:I

    invoke-static {v0, v2}, Lcom/instabug/bug/view/reporting/b;->h(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
