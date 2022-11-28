.class Lcom/instabug/bug/view/reporting/b$m;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BaseReportingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/b;->E()V
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
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->j(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->j(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lcom/instabug/bug/view/reporting/b;->c(I)I

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    iget-object p1, p1, Lcom/instabug/bug/view/reporting/b;->f:Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43020000    # 130.0f

    invoke-static {v2, v3}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->s(Lcom/instabug/bug/view/reporting/b;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->b(Lcom/instabug/bug/view/reporting/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->h(Lcom/instabug/bug/view/reporting/b;)V

    return-void

    :cond_5
    if-ne p2, v0, :cond_6

    .line 16
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->h(Lcom/instabug/bug/view/reporting/b;)V

    goto :goto_1

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b$m;->a:Lcom/instabug/bug/view/reporting/b;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/b;->i(Lcom/instabug/bug/view/reporting/b;)V

    :goto_1
    return-void
.end method
