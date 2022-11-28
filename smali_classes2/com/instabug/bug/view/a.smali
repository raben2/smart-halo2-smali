.class public Lcom/instabug/bug/view/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AttachmentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/view/a$f;,
        Lcom/instabug/bug/view/a$e;,
        Lcom/instabug/bug/view/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:[I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/bug/view/a$d;

.field private e:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/ColorFilter;Lcom/instabug/bug/view/a$d;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_edit:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_magnify:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_blur:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_edit:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_magnify:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_blur:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_ic_edit:I

    const/4 v2, 0x6

    aput v1, v0, v2

    iput-object v0, p0, Lcom/instabug/bug/view/a;->a:[I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/instabug/bug/view/a;->h:I

    .line 23
    iput-object p1, p0, Lcom/instabug/bug/view/a;->g:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/instabug/bug/view/a;->c:Landroid/graphics/ColorFilter;

    .line 25
    iput-object p3, p0, Lcom/instabug/bug/view/a;->d:Lcom/instabug/bug/view/a$d;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/a;)Lcom/instabug/bug/view/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/a;->d:Lcom/instabug/bug/view/a$d;

    return-object p0
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/instabug/bug/view/a;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_bug_shape_attachment_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/instabug/bug/view/a;->g:Landroid/content/Context;

    sget v3, Lcom/instabug/bug/R$attr;->ibg_bug_attachment_border_color:I

    .line 41
    invoke-static {v2, v3}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/instabug/bug/view/a$e;Lcom/instabug/library/model/Attachment;)V
    .locals 2

    .line 3
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/instabug/bug/view/a$e;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/instabug/library/util/BitmapUtils;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p2}, Lcom/instabug/bug/view/a;->c(Lcom/instabug/library/model/Attachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->e:Lcom/instabug/library/view/IconView;

    invoke-virtual {v0, p2}, Lcom/instabug/library/view/IconView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->e:Lcom/instabug/library/view/IconView;

    invoke-direct {p0, p2}, Lcom/instabug/bug/view/a;->c(Lcom/instabug/library/model/Attachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->e:Lcom/instabug/library/view/IconView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/IconView;->setTextColor(I)V

    .line 11
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object v0, p1, Lcom/instabug/bug/view/a$e;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/instabug/bug/view/a;->a(Landroid/widget/RelativeLayout;)V

    .line 16
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object p2

    sget-object v0, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    if-ne p2, v0, :cond_2

    .line 17
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/bug/settings/a;->p()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    iget-object p2, p1, Lcom/instabug/bug/view/a$e;->e:Lcom/instabug/library/view/IconView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/instabug/library/view/IconView;->setVisibility(I)V

    .line 19
    iget-object p1, p1, Lcom/instabug/bug/view/a$e;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p2, p1, Lcom/instabug/bug/view/a$e;->e:Lcom/instabug/library/view/IconView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/instabug/library/view/IconView;->setVisibility(I)V

    .line 22
    iget-object p1, p1, Lcom/instabug/bug/view/a$e;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private a(Lcom/instabug/bug/view/a$f;Lcom/instabug/library/model/Attachment;)V
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RCN_REDUNDANT_NULLCHECK_WOULD_HAVE_BEEN_A_NPE"
        }
    .end annotation

    .line 45
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->d:Lcom/instabug/library/view/IconView;

    sget v1, Lcom/instabug/bug/R$id;->instabug_btn_remove_attachment:I

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->d:Lcom/instabug/library/view/IconView;

    sget v1, Lcom/instabug/bug/R$id;->instabug_btn_remove_attachment:I

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/instabug/bug/view/a;->c(Lcom/instabug/library/model/Attachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->d:Lcom/instabug/library/view/IconView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/IconView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/instabug/bug/view/a;->c:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p1, Lcom/instabug/bug/view/a$f;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p2}, Lcom/instabug/bug/view/a;->c(Lcom/instabug/library/model/Attachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->e:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instabug/bug/view/a;->f:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->c:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/instabug/bug/view/a;->e:Landroid/widget/ProgressBar;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->isVideoEncoded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttachmentsAdapter"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "AttachmentsAdapter"

    .line 59
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video path found, extracting it\'s first frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/util/VideoManipulationUtils;->extractFirstVideoFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 62
    iget-object v0, p1, Lcom/instabug/bug/view/a$f;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "AttachmentsAdapter"

    const-string v1, "error while bindVideoAttachmentView"

    .line 66
    invoke-static {v0, v1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p2, "AttachmentsAdapter"

    const-string v0, "Neither video path nor main screenshot found, using white background"

    .line 69
    invoke-static {p2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p1, Lcom/instabug/bug/view/a$f;->f:Landroid/widget/ImageView;

    sget v0, Lcom/instabug/bug/R$drawable;->ibg_core_bg_card:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object p2, p0, Lcom/instabug/bug/view/a;->e:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_2

    .line 72
    iget-object p2, p0, Lcom/instabug/bug/view/a;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/instabug/bug/view/a;->f:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 76
    iget-object p2, p0, Lcom/instabug/bug/view/a;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/instabug/bug/view/a$f;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/instabug/bug/view/a;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method private c(Lcom/instabug/library/model/Attachment;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/bug/view/a$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/bug/view/a$b;-><init>(Lcom/instabug/bug/view/a;Lcom/instabug/library/model/Attachment;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/instabug/library/model/Attachment;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/model/Attachment;

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lcom/instabug/bug/view/a$e;)V
    .locals 6

    .line 23
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/instabug/bug/view/a;->a:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 25
    iget-object v5, p0, Lcom/instabug/bug/view/a;->g:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 26
    invoke-static {v5, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v5, 0x5dc

    .line 28
    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0xc8

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setEnterFadeDuration(I)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 36
    iget-object v1, p1, Lcom/instabug/bug/view/a$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object p1, p1, Lcom/instabug/bug/view/a$e;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/instabug/bug/view/a$a;

    invoke-direct {v1, p0, v0}, Lcom/instabug/bug/view/a$a;-><init>(Lcom/instabug/bug/view/a;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/instabug/library/model/Attachment;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/bug/view/a;->h:I

    return-void
.end method

.method public b(Lcom/instabug/library/model/Attachment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/a;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public d()Landroid/widget/ProgressBar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/a;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

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

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v0}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/bug/view/a$c;->a:[I

    iget-object v1, p0, Lcom/instabug/bug/view/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/model/Attachment;

    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/instabug/bug/view/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    check-cast p1, Lcom/instabug/bug/view/a$e;

    invoke-virtual {p0, p2}, Lcom/instabug/bug/view/a;->a(I)Lcom/instabug/library/model/Attachment;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/instabug/bug/view/a;->a(Lcom/instabug/bug/view/a$e;Lcom/instabug/library/model/Attachment;)V

    .line 5
    iget v0, p0, Lcom/instabug/bug/view/a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/instabug/bug/view/a;->a(I)Lcom/instabug/library/model/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/Attachment;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/a;->a(Lcom/instabug/bug/view/a$e;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/instabug/bug/view/a;->a(I)Lcom/instabug/library/model/Attachment;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/instabug/library/model/Attachment;->setShouldAnimate(Z)V

    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Lcom/instabug/bug/view/a$f;

    invoke-virtual {p0, p2}, Lcom/instabug/bug/view/a;->a(I)Lcom/instabug/library/model/Attachment;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/instabug/bug/view/a;->a(Lcom/instabug/bug/view/a$f;Lcom/instabug/library/model/Attachment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/instabug/bug/view/a$e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$layout;->ibg_bug_lyt_attachment_image:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/instabug/bug/view/a$e;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/instabug/bug/view/a$f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$layout;->ibg_bug_lyt_attachment_video:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/instabug/bug/view/a$f;-><init>(Landroid/view/View;)V

    return-object p2
.end method
