.class public Lcom/instabug/featuresrequest/ui/c/e;
.super Landroid/widget/BaseAdapter;
.source "TimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/featuresrequest/ui/c/e$c;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/featuresrequest/d/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/instabug/featuresrequest/ui/c/c;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/instabug/featuresrequest/ui/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/featuresrequest/d/f;",
            ">;",
            "Lcom/instabug/featuresrequest/ui/c/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/e;->a:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/e;->b:Lcom/instabug/featuresrequest/ui/c/c;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/instabug/featuresrequest/d/a;Landroid/widget/ImageView;)V
    .locals 1

    .line 46
    invoke-virtual {p2}, Lcom/instabug/featuresrequest/d/a;->c()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/instabug/library/model/AssetEntity$AssetType;->IMAGE:Lcom/instabug/library/model/AssetEntity$AssetType;

    invoke-static {p1, p3, v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->createEmptyEntity(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;)Lcom/instabug/library/model/AssetEntity;

    move-result-object p3

    .line 48
    new-instance v0, Lcom/instabug/featuresrequest/ui/c/e$b;

    invoke-direct {v0, p0, p2}, Lcom/instabug/featuresrequest/ui/c/e$b;-><init>(Lcom/instabug/featuresrequest/ui/c/e;Lcom/instabug/featuresrequest/d/a;)V

    invoke-static {p1, p3, v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/e;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/f;->a()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/instabug/featuresrequest/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/e;->c()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/e;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->f:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lcom/instabug/featuresrequest/g/g;->a(Lcom/instabug/featuresrequest/d/b$a;Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 4
    iget-object p1, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/e;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->f:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instabug/featuresrequest/ui/c/e;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/a;)V

    .line 2
    iget-object p3, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->c:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 4
    :cond_0
    iget-object p3, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->a:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p3

    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p3, v0, :cond_1

    .line 7
    iget-object p1, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->a:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    const/16 p3, 0xff

    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->a:Landroid/widget/RelativeLayout;

    const p3, 0x106000b

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/a;)V
    .locals 8

    .line 6
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_owner_anonymous_word:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_1
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 21
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p3, v0}, Lcom/instabug/featuresrequest/ui/c/e;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/d/a;Landroid/widget/ImageView;)V

    .line 22
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->b:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 25
    :cond_2
    :try_start_0
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->b:Landroid/widget/ImageView;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    .line 26
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 27
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TimelineAdapter"

    const-string v2, "Can\'t set avatar image in feature detail comments"

    .line 30
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_3
    :goto_1
    iget-object v0, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/f;->a()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/instabug/featuresrequest/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_4
    iget-object v2, p2, Lcom/instabug/featuresrequest/ui/c/e$c;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 41
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->e()Ljava/lang/String;

    move-result-object v3

    sget p2, Lcom/instabug/featuresrequest/R$string;->feature_request_str_more:I

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p2, Lcom/instabug/featuresrequest/R$string;->feature_request_str_less:I

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {p3}, Lcom/instabug/featuresrequest/d/a;->j()Z

    move-result v6

    new-instance v7, Lcom/instabug/featuresrequest/ui/c/e$a;

    invoke-direct {v7, p0, p3}, Lcom/instabug/featuresrequest/ui/c/e$a;-><init>(Lcom/instabug/featuresrequest/ui/c/e;Lcom/instabug/featuresrequest/d/a;)V

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/instabug/featuresrequest/g/j;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/featuresrequest/d/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/d/a;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/c/e;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/instabug/featuresrequest/R$layout;->ib_fr_item_comment:I

    .line 7
    invoke-virtual {v3, v4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/instabug/featuresrequest/R$layout;->ib_fr_item_status_change:I

    .line 17
    invoke-virtual {v3, v4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/instabug/featuresrequest/R$layout;->ib_fr_item_admin_comment:I

    .line 19
    invoke-virtual {v3, v4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    :goto_0
    new-instance p3, Lcom/instabug/featuresrequest/ui/c/e$c;

    invoke-direct {p3, p2}, Lcom/instabug/featuresrequest/ui/c/e$c;-><init>(Landroid/view/View;)V

    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/instabug/featuresrequest/ui/c/e$c;

    :goto_1
    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/c/e;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/d/a;

    invoke-virtual {p0, v0, p3, p1}, Lcom/instabug/featuresrequest/ui/c/e;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/a;)V

    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/c/e;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/d/e;

    invoke-direct {p0, v0, p3, p1}, Lcom/instabug/featuresrequest/ui/c/e;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/e;)V

    goto :goto_2

    .line 46
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/c/e;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/d/a;

    invoke-direct {p0, v0, p3, p1}, Lcom/instabug/featuresrequest/ui/c/e;->b(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/a;)V

    :goto_2
    return-object p2
.end method
