.class public Lcom/instabug/library/annotation/AnnotationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AnnotationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/annotation/AnnotationView$h;,
        Lcom/instabug/library/annotation/AnnotationView$d;,
        Lcom/instabug/library/annotation/AnnotationView$c;,
        Lcom/instabug/library/annotation/AnnotationView$g;,
        Lcom/instabug/library/annotation/AnnotationView$f;,
        Lcom/instabug/library/annotation/AnnotationView$e;,
        Lcom/instabug/library/annotation/AnnotationView$b;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "LI_LAZY_INIT_UPDATE_STATIC",
        "ST_WRITE_TO_STATIC_FROM_INSTANCE_METHOD"
    }
.end annotation


# static fields
.field private static volatile H:Lcom/instabug/library/annotation/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private A:Lcom/instabug/library/annotation/AnnotationView$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/instabug/library/annotation/AnnotationView$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:Z

.field private D:Lcom/instabug/library/annotation/f/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E:Lcom/instabug/library/annotation/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile F:Z

.field G:I

.field private final a:Landroid/view/GestureDetector;

.field private b:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/graphics/Path;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:F

.field private h:F

.field private i:Z

.field private volatile j:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:[Landroid/graphics/PointF;

.field private l:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:I

.field private volatile o:Z

.field private p:Landroid/graphics/Paint;

.field private q:Lcom/instabug/library/annotation/a;

.field private r:Lcom/instabug/library/annotation/a;

.field private s:Lcom/instabug/library/annotation/a;

.field private t:Lcom/instabug/library/annotation/a;

.field private u:Landroid/graphics/PointF;

.field private volatile v:Lcom/instabug/library/annotation/AnnotationView$b;

.field private w:Lcom/instabug/library/annotation/AnnotationView$c;

.field private x:Lcom/instabug/library/annotation/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lcom/instabug/library/annotation/g/a;

.field private volatile z:Lcom/instabug/library/annotation/AnnotationView$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/annotation/AnnotationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/annotation/AnnotationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationView;->f:Ljava/util/LinkedHashMap;

    const/4 p2, 0x5

    .line 9
    new-array p2, p2, [Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationView;->k:[Landroid/graphics/PointF;

    .line 21
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    .line 22
    sget-object p2, Lcom/instabug/library/annotation/AnnotationView$b;->NONE:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 23
    sget-object p2, Lcom/instabug/library/annotation/AnnotationView$c;->NONE:Lcom/instabug/library/annotation/AnnotationView$c;

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    .line 26
    new-instance p2, Lcom/instabug/library/annotation/g/a;

    invoke-direct {p2}, Lcom/instabug/library/annotation/g/a;-><init>()V

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/instabug/library/annotation/AnnotationView;->F:Z

    .line 54
    new-instance p3, Lcom/instabug/library/annotation/d;

    invoke-direct {p3}, Lcom/instabug/library/annotation/d;-><init>()V

    iput-object p3, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    .line 56
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instabug/library/annotation/AnnotationView$d;-><init>(Lcom/instabug/library/annotation/AnnotationView;Lcom/instabug/library/annotation/AnnotationView$a;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/instabug/library/annotation/AnnotationView;->a:Landroid/view/GestureDetector;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->p:Landroid/graphics/Paint;

    const p3, -0xff01

    .line 58
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance p1, Lcom/instabug/library/annotation/a;

    invoke-direct {p1}, Lcom/instabug/library/annotation/a;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->q:Lcom/instabug/library/annotation/a;

    .line 61
    new-instance p1, Lcom/instabug/library/annotation/a;

    invoke-direct {p1}, Lcom/instabug/library/annotation/a;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->r:Lcom/instabug/library/annotation/a;

    .line 62
    new-instance p1, Lcom/instabug/library/annotation/a;

    invoke-direct {p1}, Lcom/instabug/library/annotation/a;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->s:Lcom/instabug/library/annotation/a;

    .line 63
    new-instance p1, Lcom/instabug/library/annotation/a;

    invoke-direct {p1}, Lcom/instabug/library/annotation/a;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->t:Lcom/instabug/library/annotation/a;

    .line 65
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->g()V

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->k:[Landroid/graphics/PointF;

    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 68
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 539
    iput p1, p0, Lcom/instabug/library/annotation/AnnotationView;->n:I

    .line 541
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 542
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    .line 544
    iput-boolean v1, p0, Lcom/instabug/library/annotation/AnnotationView;->o:Z

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 547
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 549
    iput-boolean v0, p0, Lcom/instabug/library/annotation/AnnotationView;->o:Z

    .line 550
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/library/annotation/c;)Lcom/instabug/library/annotation/c;
    .locals 0

    .line 1
    sput-object p0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/annotation/AnnotationView;)Lcom/instabug/library/annotation/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    return-object p0
.end method

.method private a(FF)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->k:[Landroid/graphics/PointF;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    iput p1, v3, Landroid/graphics/PointF;->x:F

    .line 5
    iput p2, v3, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->B:Lcom/instabug/library/annotation/AnnotationView$h;

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0, p1, p2}, Lcom/instabug/library/annotation/AnnotationView$h;->a(Landroid/graphics/Path;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/view/MotionEvent;)V
    .locals 4

    monitor-enter p0

    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 238
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView$a;->b:[I

    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    .line 383
    :pswitch_0
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v1, :cond_c

    .line 385
    new-instance v1, Lcom/instabug/library/annotation/b;

    invoke-direct {v1}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 387
    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 388
    iput v0, v1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v2

    int-to-float v0, v0

    .line 389
    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    float-to-int v2, v2

    int-to-float v2, v2

    .line 391
    iput v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    int-to-float v0, v0

    .line 392
    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 395
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 396
    iput p1, v1, Landroid/graphics/RectF;->top:F

    float-to-int p1, v0

    int-to-float p1, p1

    .line 397
    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    float-to-int v0, v0

    int-to-float v0, v0

    .line 399
    iput v0, v1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    int-to-float p1, p1

    .line 400
    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 403
    :goto_1
    sget-object p1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {p1, v1}, Lcom/instabug/library/annotation/c;->b(Lcom/instabug/library/annotation/b;)V

    goto/16 :goto_a

    .line 404
    :pswitch_1
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v1, :cond_c

    .line 406
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    instance-of v1, v1, Lcom/instabug/library/annotation/f/a;

    if-eqz v1, :cond_2

    .line 407
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/a;

    .line 408
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/instabug/library/annotation/f/a;->a(FFLcom/instabug/library/annotation/b;)V

    goto/16 :goto_a

    .line 410
    :cond_2
    new-instance v1, Lcom/instabug/library/annotation/b;

    invoke-direct {v1}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 412
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 413
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 414
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 416
    :cond_3
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 417
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 421
    :goto_2
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    .line 422
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 423
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 425
    :cond_4
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 426
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 428
    :goto_3
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v2, v1}, Lcom/instabug/library/annotation/c;->a(Lcom/instabug/library/annotation/b;)V

    .line 429
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    instance-of v1, v1, Lcom/instabug/library/annotation/f/f;

    if-eqz v1, :cond_c

    .line 430
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/f;

    .line 431
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/instabug/library/annotation/f/f;->b(FFLcom/instabug/library/annotation/b;)V

    goto/16 :goto_a

    .line 432
    :pswitch_2
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v1, :cond_c

    .line 434
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    instance-of v1, v1, Lcom/instabug/library/annotation/f/a;

    if-eqz v1, :cond_5

    .line 435
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/a;

    .line 436
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/instabug/library/annotation/f/a;->b(FFLcom/instabug/library/annotation/b;)V

    goto/16 :goto_a

    .line 438
    :cond_5
    new-instance v1, Lcom/instabug/library/annotation/b;

    invoke-direct {v1}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 440
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    .line 441
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 442
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 444
    :cond_6
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 445
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 448
    :goto_4
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_7

    .line 449
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 450
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    .line 452
    :cond_7
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 453
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 456
    :goto_5
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v2, v1}, Lcom/instabug/library/annotation/c;->a(Lcom/instabug/library/annotation/b;)V

    .line 457
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    instance-of v1, v1, Lcom/instabug/library/annotation/f/f;

    if-eqz v1, :cond_c

    .line 458
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/f;

    .line 459
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/instabug/library/annotation/f/f;->a(FFLcom/instabug/library/annotation/b;)V

    goto/16 :goto_a

    .line 460
    :pswitch_3
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v1, :cond_c

    .line 462
    new-instance v1, Lcom/instabug/library/annotation/b;

    invoke-direct {v1}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 464
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    .line 465
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 466
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 468
    :cond_8
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 469
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 472
    :goto_6
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_9

    .line 473
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 474
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_7

    .line 476
    :cond_9
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 477
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 481
    :goto_7
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v2, v1}, Lcom/instabug/library/annotation/c;->a(Lcom/instabug/library/annotation/b;)V

    .line 482
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    instance-of v1, v1, Lcom/instabug/library/annotation/f/f;

    if-eqz v1, :cond_c

    .line 483
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/f;

    .line 484
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/instabug/library/annotation/f/f;->d(FFLcom/instabug/library/annotation/b;)V

    goto/16 :goto_a

    .line 485
    :pswitch_4
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v1, :cond_c

    .line 487
    new-instance v1, Lcom/instabug/library/annotation/b;

    invoke-direct {v1}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 489
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_a

    .line 490
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 491
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_8

    .line 493
    :cond_a
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 494
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 497
    :goto_8
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_b

    .line 498
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 499
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    .line 501
    :cond_b
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 502
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 506
    :goto_9
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v2, v1}, Lcom/instabug/library/annotation/c;->a(Lcom/instabug/library/annotation/b;)V

    .line 507
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    instance-of v1, v1, Lcom/instabug/library/annotation/f/f;

    if-eqz v1, :cond_c

    .line 508
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/f;

    .line 509
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/instabug/library/annotation/f/f;->c(FFLcom/instabug/library/annotation/b;)V

    goto :goto_a

    .line 510
    :pswitch_5
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v1, :cond_c

    .line 511
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Lcom/instabug/library/annotation/c;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(Lcom/instabug/library/annotation/b;)V
    .locals 11

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instabug/library/annotation/e/c;

    invoke-direct {v0}, Lcom/instabug/library/annotation/e/c;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/instabug/library/annotation/e/c;->a(Landroid/graphics/Path;)Lcom/instabug/library/annotation/e/c$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    iget-object v2, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    sget-object v3, Lcom/instabug/library/annotation/e/e;->ARROW:Lcom/instabug/library/annotation/e/e;

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_10

    sget-object v3, Lcom/instabug/library/annotation/e/e;->LINE:Lcom/instabug/library/annotation/e/e;

    if-ne v2, v3, :cond_1

    goto/16 :goto_5

    .line 38
    :cond_1
    sget-object v3, Lcom/instabug/library/annotation/e/e;->RECT:Lcom/instabug/library/annotation/e/e;

    const/4 v5, 0x0

    const/16 v6, 0x6e

    const/16 v7, 0x46

    const/16 v8, 0x14

    const/16 v9, 0x5a

    if-ne v2, v3, :cond_c

    .line 40
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v1

    .line 45
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    add-float/2addr v10, v1

    .line 46
    invoke-virtual {p1, v2, v4, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 48
    iget v1, v0, Lcom/instabug/library/annotation/e/c$a;->c:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    .line 50
    iget v2, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    const/16 v3, 0xa0

    const/16 v4, 0xb4

    if-gt v2, v8, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-lt v2, v7, :cond_3

    if-gt v2, v6, :cond_3

    const/16 v2, 0x5a

    goto :goto_0

    :cond_3
    if-lt v2, v3, :cond_4

    const/16 v2, 0xb4

    :cond_4
    :goto_0
    if-eqz v2, :cond_8

    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    if-ne v2, v9, :cond_6

    .line 63
    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 64
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_6
    if-le v2, v9, :cond_7

    if-ge v2, v4, :cond_7

    add-int/lit8 v2, v2, -0x5a

    .line 67
    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 68
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 70
    :cond_7
    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 71
    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 72
    :cond_8
    :goto_1
    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 73
    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 86
    :goto_2
    iget v1, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    if-lt v1, v8, :cond_9

    if-le v1, v7, :cond_a

    :cond_9
    iget v0, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    if-lt v0, v6, :cond_b

    if-gt v0, v3, :cond_b

    .line 88
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    .line 89
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v1

    .line 90
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 91
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 92
    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 93
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 96
    :cond_b
    new-instance v1, Lcom/instabug/library/annotation/f/f;

    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lcom/instabug/library/annotation/f/f;-><init>(IFI)V

    goto/16 :goto_6

    .line 97
    :cond_c
    sget-object v3, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    if-ne v2, v3, :cond_12

    .line 99
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 101
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v1

    .line 103
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v1

    .line 104
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    add-float/2addr v10, v1

    .line 105
    invoke-virtual {p1, v2, v4, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    iget v1, v0, Lcom/instabug/library/annotation/e/c$a;->c:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    .line 108
    iget v0, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    if-gt v0, v8, :cond_d

    const/4 v0, 0x0

    goto :goto_3

    :cond_d
    if-lt v0, v7, :cond_e

    if-gt v0, v6, :cond_e

    const/16 v0, 0x5a

    :cond_e
    :goto_3
    if-lt v0, v9, :cond_f

    add-int/lit8 v0, v0, -0x5a

    .line 117
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 118
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 120
    :cond_f
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 121
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 124
    :goto_4
    new-instance v1, Lcom/instabug/library/annotation/f/d;

    iget v2, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/instabug/library/annotation/f/d;-><init>(IFI)V

    goto/16 :goto_6

    .line 125
    :cond_10
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 127
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    .line 128
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v1

    .line 130
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 131
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v1}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 134
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v2}, Lcom/instabug/library/annotation/g/c;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 136
    new-instance v3, Lcom/instabug/library/annotation/f/a;

    iget v4, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    iget-object v5, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/instabug/library/annotation/f/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;IF)V

    .line 139
    iget v4, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    invoke-virtual {v3, v4}, Lcom/instabug/library/annotation/f/a;->a(I)V

    .line 140
    iget-object v0, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    sget-object v4, Lcom/instabug/library/annotation/e/e;->ARROW:Lcom/instabug/library/annotation/e/e;

    if-ne v0, v4, :cond_11

    const-string v0, "arrow"

    .line 141
    invoke-virtual {v3, v0}, Lcom/instabug/library/annotation/f/a;->a(Ljava/lang/String;)V

    .line 144
    :cond_11
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 145
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 146
    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 147
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 149
    invoke-virtual {p1, v0, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v1, v3

    .line 227
    :cond_12
    :goto_6
    iput-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->D:Lcom/instabug/library/annotation/f/g;

    .line 228
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->E:Lcom/instabug/library/annotation/b;

    if-eqz v1, :cond_13

    .line 230
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Lcom/instabug/library/annotation/f/g;->a(Lcom/instabug/library/annotation/b;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/instabug/library/annotation/AnnotationView;->a(Landroid/graphics/Path;Landroid/graphics/Path;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/instabug/library/annotation/c;Lcom/instabug/library/annotation/AnnotationView$e;)V
    .locals 2

    .line 522
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    .line 523
    sput-object p1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 524
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_1

    .line 525
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView$e;->LOW:Lcom/instabug/library/annotation/AnnotationView$e;

    if-ne p2, v1, :cond_0

    .line 526
    invoke-virtual {v0, p1}, Lcom/instabug/library/annotation/d;->a(Lcom/instabug/library/annotation/c;)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0, p1}, Lcom/instabug/library/annotation/d;->b(Lcom/instabug/library/annotation/c;)V

    .line 530
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method private a(Lcom/instabug/library/annotation/f/g;Lcom/instabug/library/annotation/b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object v0, v0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/annotation/c;->a(Lcom/instabug/library/annotation/f/g;Lcom/instabug/library/annotation/b;)V

    .line 233
    sget-object p1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object p1, p1, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/instabug/library/annotation/f/g;->a(Z)V

    .line 234
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    sget-object p2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {p1, p2}, Lcom/instabug/library/annotation/d;->d(Lcom/instabug/library/annotation/c;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/instabug/library/annotation/f/g;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/AnnotationView$e;)V
    .locals 1

    .line 519
    new-instance v0, Lcom/instabug/library/annotation/c;

    invoke-direct {v0, p1}, Lcom/instabug/library/annotation/c;-><init>(Lcom/instabug/library/annotation/f/g;)V

    .line 520
    invoke-virtual {v0, p2}, Lcom/instabug/library/annotation/c;->b(Lcom/instabug/library/annotation/b;)V

    .line 521
    invoke-direct {p0, v0, p3}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/c;Lcom/instabug/library/annotation/AnnotationView$e;)V

    return-void
.end method

.method private b(FF)V
    .locals 6

    .line 2
    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->g:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3
    iget v1, p0, Lcom/instabug/library/annotation/AnnotationView;->h:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 6
    iget v1, p0, Lcom/instabug/library/annotation/AnnotationView;->g:F

    iget v2, p0, Lcom/instabug/library/annotation/AnnotationView;->h:F

    add-float v3, p1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v5, p2, v2

    div-float/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 8
    :cond_1
    iput p1, p0, Lcom/instabug/library/annotation/AnnotationView;->g:F

    .line 9
    iput p2, p0, Lcom/instabug/library/annotation/AnnotationView;->h:F

    .line 10
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 11
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/annotation/AnnotationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->f()V

    return-void
.end method

.method private b(Lcom/instabug/library/annotation/c;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/library/annotation/f/h;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/f/h;

    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/annotation/f/h;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/library/annotation/f/b;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/f/b;

    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/annotation/f/b;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(FF)V
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->c:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    iget v2, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->c:Ljava/util/List;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput p1, p0, Lcom/instabug/library/annotation/AnnotationView;->g:F

    .line 9
    iput p2, p0, Lcom/instabug/library/annotation/AnnotationView;->h:F

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/annotation/AnnotationView;->a(FF)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/library/annotation/AnnotationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->i()V

    return-void
.end method

.method static synthetic e()Lcom/instabug/library/annotation/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    return-object v0
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->A:Lcom/instabug/library/annotation/AnnotationView$g;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/instabug/library/annotation/AnnotationView$g;->a(Z)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->A:Lcom/instabug/library/annotation/AnnotationView$g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instabug/library/annotation/AnnotationView$g;->a(Z)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v0, -0x10000

    .line 4
    iput v0, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    .line 5
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/annotation/AnnotationView;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->l:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getScaledBitmap()Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->m:Landroid/graphics/Bitmap;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->m:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScaledDrawables()Lcom/instabug/library/annotation/d;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/annotation/g/a;->b(F)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/annotation/g/a;->c(F)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/instabug/library/annotation/d;

    invoke-direct {v0}, Lcom/instabug/library/annotation/d;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/annotation/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/annotation/c;

    .line 5
    new-instance v3, Lcom/instabug/library/annotation/b;

    invoke-direct {v3}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 6
    iget-object v4, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    invoke-virtual {v5}, Lcom/instabug/library/annotation/g/a;->b()F

    move-result v5

    mul-float v4, v4, v5

    .line 7
    iget-object v5, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    invoke-virtual {v6}, Lcom/instabug/library/annotation/g/a;->a()F

    move-result v6

    mul-float v5, v5, v6

    .line 8
    iget-object v6, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    invoke-virtual {v7}, Lcom/instabug/library/annotation/g/a;->b()F

    move-result v7

    mul-float v6, v6, v7

    .line 9
    iget-object v7, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    .line 10
    invoke-virtual {v8}, Lcom/instabug/library/annotation/g/a;->a()F

    move-result v8

    mul-float v7, v7, v8

    .line 11
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    invoke-virtual {v2}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v4

    instance-of v4, v4, Lcom/instabug/library/annotation/f/a;

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v4

    check-cast v4, Lcom/instabug/library/annotation/f/a;

    invoke-virtual {v4, v3}, Lcom/instabug/library/annotation/f/a;->b(Lcom/instabug/library/annotation/b;)V

    .line 15
    :cond_1
    iget-object v4, v2, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v4}, Lcom/instabug/library/annotation/b;->f()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/instabug/library/annotation/b;->a(Z)V

    .line 16
    new-instance v4, Lcom/instabug/library/annotation/b;

    invoke-direct {v4, v3}, Lcom/instabug/library/annotation/b;-><init>(Lcom/instabug/library/annotation/b;)V

    invoke-virtual {v2, v4}, Lcom/instabug/library/annotation/c;->b(Lcom/instabug/library/annotation/b;)V

    goto :goto_0

    .line 18
    :cond_2
    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    return-object v0
.end method

.method private getSelectedMarkUpDrawable()Lcom/instabug/library/annotation/c;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/annotation/d;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    invoke-virtual {v2, v0}, Lcom/instabug/library/annotation/d;->a(I)Lcom/instabug/library/annotation/c;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Lcom/instabug/library/annotation/c;->a(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2
    iget v1, p0, Lcom/instabug/library/annotation/AnnotationView;->g:F

    iget v2, p0, Lcom/instabug/library/annotation/AnnotationView;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/instabug/library/annotation/c;

    new-instance v1, Lcom/instabug/library/annotation/f/e;

    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    iget-object v4, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/instabug/library/annotation/AnnotationView;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instabug/library/annotation/f/e;-><init>(Landroid/graphics/Path;FLandroid/graphics/Paint;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/instabug/library/annotation/c;-><init>(Lcom/instabug/library/annotation/f/g;)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 13
    new-instance v0, Lcom/instabug/library/annotation/b;

    invoke-direct {v0}, Lcom/instabug/library/annotation/b;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 15
    sget-object v1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    new-instance v2, Lcom/instabug/library/annotation/b;

    invoke-direct {v2, v0}, Lcom/instabug/library/annotation/b;-><init>(Lcom/instabug/library/annotation/b;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/c;->b(Lcom/instabug/library/annotation/b;)V

    .line 16
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v1, :cond_1

    .line 17
    sget-object v2, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/d;->b(Lcom/instabug/library/annotation/c;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->f:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 23
    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/b;)V

    :cond_2
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v1, Lcom/instabug/library/annotation/AnnotationView$b;->DRAW:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/d;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    invoke-virtual {v1, v0}, Lcom/instabug/library/annotation/d;->a(I)Lcom/instabug/library/annotation/c;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    sget-object v3, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v2, v3}, Lcom/instabug/library/annotation/d;->c(Lcom/instabug/library/annotation/c;)I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v2

    instance-of v2, v2, Lcom/instabug/library/annotation/f/h;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/f/h;

    .line 8
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/annotation/f/h;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 531
    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 532
    new-instance v0, Lcom/instabug/library/annotation/f/h;

    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instabug/library/annotation/f/h;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/f/g;)V

    .line 533
    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    .line 536
    :cond_0
    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->A:Lcom/instabug/library/annotation/AnnotationView$g;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 538
    invoke-interface {v0, v1}, Lcom/instabug/library/annotation/AnnotationView$g;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/library/annotation/f/g;)V
    .locals 6

    .line 512
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 513
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 514
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 516
    new-instance v3, Lcom/instabug/library/annotation/b;

    int-to-float v4, v1

    add-int/lit8 v5, v2, -0x1e

    int-to-float v5, v5

    add-int/2addr v1, v0

    int-to-float v1, v1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/instabug/library/annotation/b;-><init>(FFFF)V

    .line 518
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$e;->HIGH:Lcom/instabug/library/annotation/AnnotationView$e;

    invoke-direct {p0, p1, v3, v0}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/f/g;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/AnnotationView$e;)V

    return-void
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->D:Lcom/instabug/library/annotation/f/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->E:Lcom/instabug/library/annotation/b;

    if-eqz v1, :cond_0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/f/g;Lcom/instabug/library/annotation/b;)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/annotation/d;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/AnnotationView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/annotation/d;->c()Lcom/instabug/library/annotation/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/library/annotation/f/h;

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    .line 5
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->f()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 8
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->i()V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public getDrawingMode()Lcom/instabug/library/annotation/AnnotationView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/OrientationUtils;->lockScreenOrientation(Landroid/content/Context;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->m:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/annotation/AnnotationView;->F:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    .line 3
    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/OrientationUtils;->unlockOrientation(Landroid/content/Context;)V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/instabug/library/annotation/AnnotationView;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/instabug/library/annotation/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/instabug/library/annotation/AnnotationView;->n:I

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/instabug/library/annotation/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/annotation/c;

    .line 13
    invoke-direct {p0, v1}, Lcom/instabug/library/annotation/AnnotationView;->b(Lcom/instabug/library/annotation/c;)V

    .line 14
    invoke-virtual {v1, p1}, Lcom/instabug/library/annotation/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/instabug/library/annotation/AnnotationView;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_4

    .line 20
    iget-boolean v0, p0, Lcom/instabug/library/annotation/AnnotationView;->C:Z

    if-eqz v0, :cond_3

    .line 22
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0, p1}, Lcom/instabug/library/annotation/c;->b(Landroid/graphics/Canvas;)V

    .line 25
    :cond_3
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/instabug/library/annotation/a;

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->q:Lcom/instabug/library/annotation/a;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->t:Lcom/instabug/library/annotation/a;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->r:Lcom/instabug/library/annotation/a;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->s:Lcom/instabug/library/annotation/a;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Lcom/instabug/library/annotation/c;->a(Landroid/graphics/Canvas;[Lcom/instabug/library/annotation/a;)V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 37
    :cond_6
    iget-boolean p1, p0, Lcom/instabug/library/annotation/AnnotationView;->F:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz p1, :cond_7

    .line 38
    iput-boolean v1, p0, Lcom/instabug/library/annotation/AnnotationView;->F:Z

    .line 39
    sget-object p1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object p1, p1, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    invoke-virtual {p1}, Lcom/instabug/library/annotation/f/g;->b()Z

    move-result p1

    if-nez p1, :cond_7

    .line 40
    sget-object p1, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    iget-object p1, p1, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "aspectRatioCalculator"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/annotation/g/a;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    const-string v0, "drawingLevel"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/annotation/AnnotationView;->n:I

    const-string v0, "magnifiersCount"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    const-string v0, "drawingMode"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/annotation/AnnotationView$c;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v0, "superState"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "superState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v1, p0, Lcom/instabug/library/annotation/AnnotationView;->y:Lcom/instabug/library/annotation/g/a;

    const-string v2, "aspectRatioCalculator"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/annotation/AnnotationView;->getDrawingMode()Lcom/instabug/library/annotation/AnnotationView$c;

    move-result-object v1

    const-string v2, "drawingMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    iget v1, p0, Lcom/instabug/library/annotation/AnnotationView;->n:I

    const-string v2, "drawingLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lcom/instabug/library/annotation/AnnotationView;->G:I

    const-string v2, "magnifiersCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getScaledDrawables()Lcom/instabug/library/annotation/d;

    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/AnnotationView;->a(Landroid/view/MotionEvent;)V

    .line 76
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->i()V

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    goto/16 :goto_2

    .line 83
    :cond_2
    iput-boolean v5, p0, Lcom/instabug/library/annotation/AnnotationView;->C:Z

    .line 84
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->DRAG:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-ne v0, v6, :cond_4

    .line 88
    :cond_3
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_4

    .line 89
    sget-object v6, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/d;->d(Lcom/instabug/library/annotation/c;)V

    .line 90
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0}, Lcom/instabug/library/annotation/c;->d()V

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 96
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_PATH:Lcom/instabug/library/annotation/AnnotationView$c;

    if-eq v0, v6, :cond_f

    .line 97
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->NONE:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    goto/16 :goto_2

    .line 99
    :cond_5
    iput-boolean v1, p0, Lcom/instabug/library/annotation/AnnotationView;->C:Z

    .line 102
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    .line 104
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->z:Lcom/instabug/library/annotation/AnnotationView$f;

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->z:Lcom/instabug/library/annotation/AnnotationView$f;

    invoke-interface {v0}, Lcom/instabug/library/annotation/AnnotationView$f;->a()V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 109
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->r:Lcom/instabug/library/annotation/a;

    iget-object v6, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_7

    .line 110
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    goto/16 :goto_1

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->s:Lcom/instabug/library/annotation/a;

    iget-object v6, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_8

    .line 112
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    goto/16 :goto_1

    .line 113
    :cond_8
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->q:Lcom/instabug/library/annotation/a;

    iget-object v6, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_9

    .line 114
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    goto/16 :goto_1

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->t:Lcom/instabug/library/annotation/a;

    iget-object v6, p0, Lcom/instabug/library/annotation/AnnotationView;->u:Landroid/graphics/PointF;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/a;->a(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-eqz v0, :cond_a

    .line 116
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    goto/16 :goto_1

    .line 119
    :cond_a
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getSelectedMarkUpDrawable()Lcom/instabug/library/annotation/c;

    move-result-object v0

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 121
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    if-eqz v0, :cond_e

    .line 122
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$a;->a:[I

    iget-object v6, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v1, :cond_d

    if-eq v0, v4, :cond_c

    const/4 v6, 0x3

    if-eq v0, v6, :cond_b

    goto :goto_0

    .line 139
    :cond_b
    new-instance v0, Lcom/instabug/library/annotation/c;

    new-instance v6, Lcom/instabug/library/annotation/f/b;

    .line 140
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/instabug/library/annotation/f/b;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    invoke-direct {v0, v6}, Lcom/instabug/library/annotation/c;-><init>(Lcom/instabug/library/annotation/f/g;)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 141
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/d;->a(Lcom/instabug/library/annotation/c;)V

    .line 142
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    goto :goto_0

    .line 143
    :cond_c
    new-instance v0, Lcom/instabug/library/annotation/c;

    new-instance v6, Lcom/instabug/library/annotation/f/d;

    iget v7, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    iget-object v8, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    invoke-direct {v6, v7, v8, v5}, Lcom/instabug/library/annotation/f/d;-><init>(IFI)V

    invoke-direct {v0, v6}, Lcom/instabug/library/annotation/c;-><init>(Lcom/instabug/library/annotation/f/g;)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 145
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/d;->b(Lcom/instabug/library/annotation/c;)V

    .line 146
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    goto :goto_0

    .line 147
    :cond_d
    new-instance v0, Lcom/instabug/library/annotation/c;

    new-instance v6, Lcom/instabug/library/annotation/f/f;

    iget v7, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    iget-object v8, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    invoke-direct {v6, v7, v8, v5}, Lcom/instabug/library/annotation/f/f;-><init>(IFI)V

    invoke-direct {v0, v6}, Lcom/instabug/library/annotation/c;-><init>(Lcom/instabug/library/annotation/f/g;)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    .line 149
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->x:Lcom/instabug/library/annotation/d;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView;->H:Lcom/instabug/library/annotation/c;

    invoke-virtual {v0, v6}, Lcom/instabug/library/annotation/d;->b(Lcom/instabug/library/annotation/c;)V

    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 170
    :goto_0
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->DRAW:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    goto :goto_1

    .line 172
    :cond_e
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->DRAG:Lcom/instabug/library/annotation/AnnotationView$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 176
    :goto_1
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->i()V

    .line 178
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 214
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_14

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_14

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_14

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_14

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->DRAG:Lcom/instabug/library/annotation/AnnotationView$b;

    if-eq v0, v6, :cond_14

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->v:Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$b;->DRAW:Lcom/instabug/library/annotation/AnnotationView$b;

    if-ne v0, v6, :cond_14

    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    sget-object v6, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_PATH:Lcom/instabug/library/annotation/AnnotationView$c;

    if-ne v0, v6, :cond_14

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_13

    if-eq p1, v1, :cond_11

    if-eq p1, v4, :cond_10

    goto :goto_3

    .line 226
    :cond_10
    iput-boolean v1, p0, Lcom/instabug/library/annotation/AnnotationView;->i:Z

    .line 227
    invoke-direct {p0, v2, v3}, Lcom/instabug/library/annotation/AnnotationView;->b(FF)V

    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    goto :goto_3

    .line 231
    :cond_11
    invoke-direct {p0}, Lcom/instabug/library/annotation/AnnotationView;->h()V

    .line 232
    iget-boolean p1, p0, Lcom/instabug/library/annotation/AnnotationView;->i:Z

    if-nez p1, :cond_12

    .line 233
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->performClick()Z

    .line 235
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    goto :goto_3

    .line 236
    :cond_13
    iput-boolean v5, p0, Lcom/instabug/library/annotation/AnnotationView;->i:Z

    .line 237
    invoke-direct {p0, v2, v3}, Lcom/instabug/library/annotation/AnnotationView;->c(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_14
    :goto_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDrawingColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/instabug/library/annotation/AnnotationView;->e:I

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDrawingMode(Lcom/instabug/library/annotation/AnnotationView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->w:Lcom/instabug/library/annotation/AnnotationView$c;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->l:Landroid/graphics/Bitmap;

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnActionDownListener(Lcom/instabug/library/annotation/AnnotationView$f;)V
    .locals 0
    .param p1    # Lcom/instabug/library/annotation/AnnotationView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->z:Lcom/instabug/library/annotation/AnnotationView$f;

    return-void
.end method

.method public setOnNewMagnifierAddingAِِِbilityChangedListener(Lcom/instabug/library/annotation/AnnotationView$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->A:Lcom/instabug/library/annotation/AnnotationView$g;

    return-void
.end method

.method public setOnPathRecognizedListener(Lcom/instabug/library/annotation/AnnotationView$h;)V
    .locals 0
    .param p1    # Lcom/instabug/library/annotation/AnnotationView$h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->B:Lcom/instabug/library/annotation/AnnotationView$h;

    return-void
.end method

.method public setScreenshot(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method
