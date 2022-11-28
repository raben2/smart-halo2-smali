.class public Lcom/instabug/survey/d/e/a/c/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WhatsNewFeaturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/d/e/a/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/instabug/survey/d/e/a/c/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Lcom/instabug/survey/d/c/c;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/instabug/survey/d/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/c/c;->a:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    return-void
.end method

.method private a(I)Lcom/instabug/survey/d/c/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/d/c/e;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/instabug/survey/d/e/a/c/c$a;I)V
    .locals 4
    .param p1    # Lcom/instabug/survey/d/e/a/c/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(I)Lcom/instabug/survey/d/c/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/instabug/survey/d/e/a/c/c$a;->a:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(I)Lcom/instabug/survey/d/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(I)Lcom/instabug/survey/d/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/e;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Lcom/instabug/survey/d/e/a/c/c$a;->b:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(I)Lcom/instabug/survey/d/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/e;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(I)Lcom/instabug/survey/d/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/e;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 9
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    if-nez v0, :cond_3

    return-void

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p1, Lcom/instabug/survey/d/e/a/c/c$a;->c:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->d()J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(I)Lcom/instabug/survey/d/c/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/survey/d/c/e;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAnnouncementAsset(JJ)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 19
    iget-object p1, p1, Lcom/instabug/survey/d/e/a/c/c$a;->c:Landroid/widget/ImageView;

    sget v0, Lcom/instabug/survey/R$drawable;->ibg_survey_ic_star_icon_placholder:I

    invoke-static {p2, p1, v0}, Lcom/instabug/library/util/BitmapUtils;->loadBitmapWithFallback(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object p1, p1, Lcom/instabug/survey/d/e/a/c/c$a;->c:Landroid/widget/ImageView;

    sget p2, Lcom/instabug/survey/R$drawable;->ibg_survey_ic_star_icon_placholder:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->b:Lcom/instabug/survey/d/c/c;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/instabug/survey/d/e/a/c/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/d/e/a/c/c;->a(Lcom/instabug/survey/d/e/a/c/c$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/d/e/a/c/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/instabug/survey/d/e/a/c/c$a;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/instabug/survey/d/e/a/c/c$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/instabug/survey/d/e/a/c/c$a;

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/c;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/instabug/survey/R$layout;->instabug_announcement_new_feature_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/instabug/survey/d/e/a/c/c$a;-><init>(Lcom/instabug/survey/d/e/a/c/c;Landroid/view/View;)V

    return-object p2
.end method
