.class Lcom/instabug/survey/d/e/a/c/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WhatsNewFeaturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/survey/d/e/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/e/a/c/c;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/d/e/a/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    sget p1, Lcom/instabug/survey/R$id;->new_feature_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/c/c$a;->a:Landroid/widget/TextView;

    .line 3
    sget p1, Lcom/instabug/survey/R$id;->new_feature_description:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/c/c$a;->b:Landroid/widget/TextView;

    .line 4
    sget p1, Lcom/instabug/survey/R$id;->new_feature_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/c/c$a;->c:Landroid/widget/ImageView;

    return-void
.end method
