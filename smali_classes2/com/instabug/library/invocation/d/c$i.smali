.class public Lcom/instabug/library/invocation/d/c$i;
.super Lcom/instabug/library/l/f/b/c;
.source "ScreenRecordingFab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/invocation/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/d/c$i$a;
    }
.end annotation


# instance fields
.field private q:Landroid/view/GestureDetector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/instabug/library/invocation/d/c$i$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:J

.field private u:F

.field private v:F

.field private w:Z

.field final synthetic x:Lcom/instabug/library/invocation/d/c;


# direct methods
.method public constructor <init>(Lcom/instabug/library/invocation/d/c;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    .line 2
    invoke-direct {p0, p2}, Lcom/instabug/library/l/f/b/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/c$i;->r:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/c$i;->w:Z

    .line 12
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/instabug/library/invocation/d/c$j;

    invoke-direct {v0}, Lcom/instabug/library/invocation/d/c$j;-><init>()V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->q:Landroid/view/GestureDetector;

    .line 13
    new-instance p1, Lcom/instabug/library/invocation/d/c$i$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/instabug/library/invocation/d/c$i$a;-><init>(Lcom/instabug/library/invocation/d/c$i;Lcom/instabug/library/invocation/d/c$a;)V

    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->s:Lcom/instabug/library/invocation/d/c$i$a;

    .line 14
    sget p1, Lcom/instabug/library/R$id;->instabug_floating_button:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setId(I)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c$i;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->k(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->h(Lcom/instabug/library/invocation/d/c;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->l(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->m(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result v1

    iget-object v2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v2}, Lcom/instabug/library/invocation/d/c;->o(Lcom/instabug/library/invocation/d/c;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->p(Lcom/instabug/library/invocation/d/c;)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->q(Lcom/instabug/library/invocation/d/c;)I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/instabug/library/invocation/d/c$i;->s:Lcom/instabug/library/invocation/d/c$i$a;

    if-eqz v2, :cond_2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 4
    invoke-static {v2, v0, v1}, Lcom/instabug/library/invocation/d/c$i$a;->a(Lcom/instabug/library/invocation/d/c$i$a;FF)V

    :cond_2
    return-void
.end method


# virtual methods
.method a(FF)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->k(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    .line 17
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->v(Lcom/instabug/library/invocation/d/c;)V

    .line 18
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->w(Lcom/instabug/library/invocation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0, p1, p2}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->x(Lcom/instabug/library/invocation/d/c;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->y(Lcom/instabug/library/invocation/d/c;)V

    .line 23
    :cond_1
    iget-boolean p1, p0, Lcom/instabug/library/invocation/d/c$i;->r:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/instabug/library/invocation/d/c$i;->w:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    .line 25
    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    .line 26
    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x32

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    .line 28
    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0xfa

    if-ge p1, p2, :cond_2

    .line 33
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c$i;->b()V

    :cond_2
    return-void
.end method

.method a(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0, p1}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;I)I

    .line 3
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1, p2}, Lcom/instabug/library/invocation/d/c;->b(Lcom/instabug/library/invocation/d/c;I)I

    .line 5
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p2}, Lcom/instabug/library/invocation/d/c;->k(Lcom/instabug/library/invocation/d/c;)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 7
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p2}, Lcom/instabug/library/invocation/d/c;->h(Lcom/instabug/library/invocation/d/c;)I

    move-result p2

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->k(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 8
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->r(Lcom/instabug/library/invocation/d/c;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->s(Lcom/instabug/library/invocation/d/c;)I

    move-result p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p2}, Lcom/instabug/library/invocation/d/c;->h(Lcom/instabug/library/invocation/d/c;)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    .line 10
    invoke-static {p2}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->u(Lcom/instabug/library/invocation/d/c;)F

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p2}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p2}, Lcom/instabug/library/invocation/d/c;->o(Lcom/instabug/library/invocation/d/c;)I

    move-result p2

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 14
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/d/c$i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/c$i;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->q:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c$i;->b()V

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/instabug/library/invocation/d/c$i;->t:J

    .line 14
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i;->s:Lcom/instabug/library/invocation/d/c$i$a;

    if-eqz p1, :cond_2

    .line 15
    invoke-static {p1}, Lcom/instabug/library/invocation/d/c$i$a;->a(Lcom/instabug/library/invocation/d/c$i$a;)V

    .line 17
    :cond_2
    iput-boolean v2, p0, Lcom/instabug/library/invocation/d/c$i;->w:Z

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_5

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/instabug/library/invocation/d/c$i;->t:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long p1, v4, v6

    if-gez p1, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    .line 22
    :cond_4
    iput-boolean v1, p0, Lcom/instabug/library/invocation/d/c$i;->w:Z

    .line 23
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c$i;->b()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 25
    iget-boolean p1, p0, Lcom/instabug/library/invocation/d/c$i;->w:Z

    if-eqz p1, :cond_6

    .line 26
    iget p1, p0, Lcom/instabug/library/invocation/d/c$i;->u:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/instabug/library/invocation/d/c$i;->v:F

    sub-float v1, v3, v1

    invoke-virtual {p0, p1, v1}, Lcom/instabug/library/invocation/d/c$i;->a(FF)V

    .line 29
    :cond_6
    :goto_1
    iput v0, p0, Lcom/instabug/library/invocation/d/c$i;->u:F

    .line 30
    iput v3, p0, Lcom/instabug/library/invocation/d/c$i;->v:F

    :goto_2
    return v2
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
