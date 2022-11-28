.class public Lcom/instabug/library/p/a;
.super Ljava/lang/Object;
.source "MotionEventRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/p/a$b;,
        Lcom/instabug/library/p/a$d;,
        Lcom/instabug/library/p/a$c;
    }
.end annotation


# static fields
.field private static l:Lcom/instabug/library/p/a;


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field private final b:Landroid/view/ScaleGestureDetector;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/instabug/library/p/a;->e:I

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lcom/instabug/library/p/a;->h:J

    .line 6
    iput-wide v1, p0, Lcom/instabug/library/p/a;->i:J

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/instabug/library/p/a;->j:Z

    .line 8
    iput-boolean v1, p0, Lcom/instabug/library/p/a;->k:Z

    .line 12
    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/p/a$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instabug/library/p/a$c;-><init>(Lcom/instabug/library/p/a;Lcom/instabug/library/p/a$a;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/instabug/library/p/a;->a:Landroid/view/GestureDetector;

    .line 15
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/p/a$d;

    invoke-direct {v3, p0, v4}, Lcom/instabug/library/p/a$d;-><init>(Lcom/instabug/library/p/a;Lcom/instabug/library/p/a$a;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/instabug/library/p/a;->b:Landroid/view/ScaleGestureDetector;

    .line 18
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    iput v1, p0, Lcom/instabug/library/p/a;->c:I

    .line 19
    iput v0, p0, Lcom/instabug/library/p/a;->d:I

    return-void
.end method

.method private a(Landroid/view/View;)Lcom/instabug/library/p/a$b;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 92
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 94
    invoke-direct {p0, v0}, Lcom/instabug/library/p/a;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0}, Lcom/instabug/library/p/a$b;->a(Landroid/view/View;)Lcom/instabug/library/p/a$b;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/instabug/library/p/a;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {v0}, Lcom/instabug/library/p/a$b;->b(Landroid/view/View;)Lcom/instabug/library/p/a$b;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/instabug/library/p/a;
    .locals 1

    .line 4
    sget-object v0, Lcom/instabug/library/p/a;->l:Lcom/instabug/library/p/a;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/instabug/library/p/a;

    invoke-direct {v0}, Lcom/instabug/library/p/a;-><init>()V

    sput-object v0, Lcom/instabug/library/p/a;->l:Lcom/instabug/library/p/a;

    .line 7
    :cond_0
    sget-object v0, Lcom/instabug/library/p/a;->l:Lcom/instabug/library/p/a;

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/instabug/library/p/a;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/p/a;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 1
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/instabug/library/p/a;->a(Ljava/lang/String;FF)V

    :cond_0
    return-void
.end method

.method private a(FFFF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p3, p4

    .line 12
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 13
    iget p3, p0, Lcom/instabug/library/p/a;->e:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p2, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/instabug/library/p/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/p/a;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/instabug/library/p/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/p/a;->k:Z

    return p1
.end method

.method private b(Landroid/view/View;)Lcom/instabug/library/p/a$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/instabug/library/p/a;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/instabug/library/p/a$b;->a(Landroid/view/View;)Lcom/instabug/library/p/a$b;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/p/a;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {p1}, Lcom/instabug/library/p/a$b;->b(Landroid/view/View;)Lcom/instabug/library/p/a$b;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/library/p/a;->a(Landroid/view/View;)Lcom/instabug/library/p/a$b;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/instabug/library/p/a;->i:J

    .line 14
    iget v3, p0, Lcom/instabug/library/p/a;->f:F

    iget v4, p0, Lcom/instabug/library/p/a;->g:F

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/instabug/library/p/a;->a(FFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/instabug/library/p/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LONG_PRESS"

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/instabug/library/p/a;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/instabug/library/p/a;->j:Z

    if-nez v0, :cond_2

    .line 19
    iget-boolean v0, p0, Lcom/instabug/library/p/a;->k:Z

    if-nez v0, :cond_2

    const-string v0, "TAP"

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/instabug/library/p/a;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 24
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/instabug/library/p/a;->k:Z

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instabug/library/p/a;->f:F

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/instabug/library/p/a;->g:F

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instabug/library/p/a;->h:J

    .line 28
    iput-boolean v1, p0, Lcom/instabug/library/p/a;->j:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private b()Z
    .locals 5

    .line 29
    iget-wide v0, p0, Lcom/instabug/library/p/a;->i:J

    iget-wide v2, p0, Lcom/instabug/library/p/a;->h:J

    sub-long/2addr v0, v2

    .line 30
    iget v2, p0, Lcom/instabug/library/p/a;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v2, p0, Lcom/instabug/library/p/a;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/instabug/library/p/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/p/a;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/instabug/library/p/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/p/a;->j:Z

    return p1
.end method

.method private c(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xf

    .line 3
    invoke-static {p1, v0}, Lcom/instabug/library/util/StringUtility;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private c()Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 2

    .line 9
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(Landroid/view/View;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/GridView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.recyclerview.widget.RecyclerView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.material.tabs.TabLayout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private e(Landroid/view/View;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/AbsSeekBar;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/instabug/library/p/a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    iget-object v0, p0, Lcom/instabug/library/p/a;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    invoke-direct {p0, p1}, Lcom/instabug/library/p/a;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method a(Ljava/lang/String;FF)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    float-to-int v0, p2

    float-to-int v1, p3

    .line 15
    invoke-static {v0, v1}, Lcom/instabug/library/invocation/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 24
    :cond_1
    new-instance v1, Lcom/instabug/library/visualusersteps/i/a;

    invoke-direct {v1}, Lcom/instabug/library/visualusersteps/i/a;-><init>()V

    .line 25
    invoke-interface {v1, v0}, Lcom/instabug/library/visualusersteps/i/c;->a(Ljava/lang/Object;)Lcom/instabug/library/visualusersteps/i/d;

    move-result-object v1

    .line 26
    invoke-interface {v1, p2, p3}, Lcom/instabug/library/visualusersteps/i/d;->a(FF)Lio/reactivex/Maybe;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lio/reactivex/Maybe;->blockingGet()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string p3, "FLING"

    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 33
    invoke-direct {p0, p2}, Lcom/instabug/library/p/a;->b(Landroid/view/View;)Lcom/instabug/library/p/a$b;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 37
    :cond_3
    iget-object p3, p2, Lcom/instabug/library/p/a$b;->a:Landroid/view/View;

    .line 38
    iget-object p2, p2, Lcom/instabug/library/p/a$b;->b:Lcom/instabug/library/p/a$b$a;

    sget-object v1, Lcom/instabug/library/p/a$b$a;->SCROLLABLE:Lcom/instabug/library/p/a$b$a;

    if-ne p2, v1, :cond_4

    const-string p1, "SCROLL"

    goto :goto_0

    .line 40
    :cond_4
    sget-object v1, Lcom/instabug/library/p/a$b$a;->SWIPEABLE:Lcom/instabug/library/p/a$b$a;

    if-ne p2, v1, :cond_6

    const-string p1, "SWIPE"

    goto :goto_0

    :cond_5
    move-object p3, p2

    :cond_6
    :goto_0
    const/4 p2, 0x0

    .line 48
    instance-of v1, p3, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 49
    invoke-direct {p0, p3}, Lcom/instabug/library/p/a;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_1

    :cond_7
    move-object v5, p2

    :goto_1
    if-eqz p3, :cond_c

    .line 53
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {v0, p2}, Lcom/instabug/library/p/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-direct {p0}, Lcom/instabug/library/p/a;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {p1, v1, p2, v5, v2}, Lcom/instabug/library/p/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    .line 64
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_8
    invoke-direct {p0}, Lcom/instabug/library/p/a;->c()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 75
    invoke-static {p3}, Lcom/instabug/library/visualusersteps/f;->g(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p1, "MOVE"

    .line 80
    :cond_9
    instance-of p2, p3, Landroid/widget/CompoundButton;

    if-eqz p2, :cond_b

    .line 81
    move-object p1, p3

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "DISABLE"

    goto :goto_2

    :cond_a
    const-string p1, "ENABLE"

    .line 85
    :cond_b
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {}, Lcom/instabug/library/visualusersteps/e;->d()Lcom/instabug/library/visualusersteps/e;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/p/a$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/instabug/library/p/a$a;-><init>(Lcom/instabug/library/p/a;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Lcom/instabug/library/visualusersteps/e$e;)V

    :cond_c
    return-void
.end method
