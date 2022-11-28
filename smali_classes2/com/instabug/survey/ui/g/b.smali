.class public Lcom/instabug/survey/ui/g/b;
.super Ljava/lang/Object;
.source "GesturesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/ui/g/b$b;
    }
.end annotation


# static fields
.field private static a:I = 0x5

.field private static b:Z = false

.field private static c:F = -1.0f

.field private static d:I = -0x1

.field private static e:F

.field private static f:F

.field private static g:Lcom/instabug/survey/ui/g/b$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    sput-object v0, Lcom/instabug/survey/ui/g/b;->g:Lcom/instabug/survey/ui/g/b$b;

    return-void
.end method

.method public static a(Landroid/view/MotionEvent;ZZLcom/instabug/survey/ui/g/b$b;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p3    # Lcom/instabug/survey/ui/g/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_13

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_2

    .line 36
    sget v0, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 38
    iget v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sget v6, Lcom/instabug/survey/ui/g/b;->c:F

    sub-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    goto/16 :goto_0

    .line 41
    :cond_1
    sget v0, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    .line 43
    iget v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lcom/instabug/survey/ui/g/b;->d:I

    if-ge v0, v5, :cond_7

    int-to-float v0, v0

    .line 44
    sget v5, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 50
    sget v0, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    .line 52
    iget v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sget v6, Lcom/instabug/survey/ui/g/b;->c:F

    sub-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    goto :goto_0

    .line 55
    :cond_3
    sget v0, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    .line 57
    iget v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    sget v5, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    goto :goto_0

    .line 62
    :cond_4
    sget v0, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    .line 63
    iget v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sget v6, Lcom/instabug/survey/ui/g/b;->c:F

    sub-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    goto :goto_0

    .line 66
    :cond_5
    sget v0, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    .line 67
    iget v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lcom/instabug/survey/ui/g/b;->d:I

    if-ge v0, v5, :cond_6

    int-to-float v0, v0

    .line 68
    sget v5, Lcom/instabug/survey/ui/g/b;->c:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    :cond_7
    :goto_0
    if-eqz p1, :cond_9

    .line 75
    iget p0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    sget p1, Lcom/instabug/survey/ui/g/b;->d:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_8

    if-nez p2, :cond_14

    .line 77
    invoke-interface {p3}, Lcom/instabug/survey/ui/g/b$b;->a()V

    .line 78
    sput-boolean v2, Lcom/instabug/survey/ui/g/b;->b:Z

    goto/16 :goto_3

    .line 81
    :cond_8
    sput-boolean v2, Lcom/instabug/survey/ui/g/b;->b:Z

    goto/16 :goto_3

    .line 84
    :cond_9
    iget p0, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    sget p1, Lcom/instabug/survey/ui/g/b;->d:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    cmpg-float p0, p0, v1

    if-gez p0, :cond_a

    .line 85
    sput-boolean v4, Lcom/instabug/survey/ui/g/b;->b:Z

    .line 86
    invoke-interface {p3}, Lcom/instabug/survey/ui/g/b$b;->e()V

    .line 87
    sput v3, Lcom/instabug/survey/ui/g/b;->d:I

    goto/16 :goto_3

    .line 89
    :cond_a
    sput-boolean v2, Lcom/instabug/survey/ui/g/b;->b:Z

    goto/16 :goto_3

    .line 95
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 96
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    .line 97
    sget v5, Lcom/instabug/survey/ui/g/b;->e:F

    sget v6, Lcom/instabug/survey/ui/g/b;->f:F

    invoke-static {v5, v0, v6, p0}, Lcom/instabug/survey/ui/g/b;->a(FFFF)Z

    move-result p0

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    sget-boolean p0, Lcom/instabug/survey/ui/g/b;->b:Z

    if-nez p0, :cond_c

    if-nez p2, :cond_c

    .line 99
    invoke-interface {p3}, Lcom/instabug/survey/ui/g/b$b;->a()V

    .line 101
    sput-boolean v4, Lcom/instabug/survey/ui/g/b;->b:Z

    .line 102
    sput v3, Lcom/instabug/survey/ui/g/b;->d:I

    const/4 v2, 0x1

    .line 106
    :cond_c
    sget-boolean p0, Lcom/instabug/survey/ui/g/b;->b:Z

    if-nez p0, :cond_11

    if-eqz p1, :cond_10

    .line 108
    sget p0, Lcom/instabug/survey/ui/g/b;->d:I

    iget p1, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, p1, :cond_e

    if-le p0, p1, :cond_e

    int-to-float p2, p1

    int-to-float p5, p0

    div-float/2addr p2, p5

    cmpg-float p2, p2, v1

    if-gez p2, :cond_d

    .line 110
    sput-boolean v4, Lcom/instabug/survey/ui/g/b;->b:Z

    .line 111
    invoke-interface {p3}, Lcom/instabug/survey/ui/g/b$b;->e()V

    .line 112
    sput v3, Lcom/instabug/survey/ui/g/b;->d:I

    goto :goto_1

    .line 114
    :cond_d
    invoke-static {p4, p1, p0}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/View;II)V

    goto :goto_2

    .line 117
    :cond_e
    sget p0, Lcom/instabug/survey/ui/g/b;->d:I

    iget p1, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, p1, :cond_11

    if-ge p0, p1, :cond_11

    int-to-float p5, p1

    int-to-float v0, p0

    div-float/2addr p5, v0

    const v0, 0x3fb33333    # 1.4f

    cmpl-float p5, p5, v0

    if-lez p5, :cond_f

    if-nez p2, :cond_12

    .line 120
    invoke-interface {p3}, Lcom/instabug/survey/ui/g/b$b;->a()V

    .line 121
    sput v3, Lcom/instabug/survey/ui/g/b;->d:I

    goto :goto_2

    .line 124
    :cond_f
    invoke-static {p4, p1, p0}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/View;II)V

    goto :goto_2

    .line 129
    :cond_10
    sget p0, Lcom/instabug/survey/ui/g/b;->d:I

    iget p1, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, p1, :cond_11

    if-le p0, p1, :cond_11

    .line 130
    invoke-static {p4, p1, p0}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/View;II)V

    goto :goto_2

    :cond_11
    :goto_1
    move v4, v2

    :cond_12
    :goto_2
    if-eqz v4, :cond_14

    .line 137
    sput v3, Lcom/instabug/survey/ui/g/b;->d:I

    goto :goto_3

    .line 138
    :cond_13
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/instabug/survey/ui/g/b;->e:F

    .line 139
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/instabug/survey/ui/g/b;->f:F

    .line 141
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/instabug/survey/ui/g/b;->c:F

    :cond_14
    :goto_3
    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x2

    .line 142
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 143
    new-instance p2, Lcom/instabug/survey/ui/g/b$a;

    invoke-direct {p2, p0}, Lcom/instabug/survey/ui/g/b$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/MotionEvent;Lcom/instabug/survey/ui/g/b$b;)V
    .locals 6
    .param p2    # Lcom/instabug/survey/ui/g/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    sget-object v0, Lcom/instabug/survey/ui/g/b;->g:Lcom/instabug/survey/ui/g/b$b;

    if-nez v0, :cond_0

    .line 17
    sput-object p2, Lcom/instabug/survey/ui/g/b;->g:Lcom/instabug/survey/ui/g/b$b;

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/view/View;

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 21
    sget p0, Lcom/instabug/survey/ui/g/b;->d:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 22
    iget p0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput p0, Lcom/instabug/survey/ui/g/b;->d:I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/MotionEvent;ZZLcom/instabug/survey/ui/g/b$b;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/MotionEvent;ZZLcom/instabug/survey/ui/g/b$b;)V
    .locals 6
    .param p4    # Lcom/instabug/survey/ui/g/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/instabug/survey/ui/g/b;->g:Lcom/instabug/survey/ui/g/b$b;

    if-nez v0, :cond_0

    .line 2
    sput-object p4, Lcom/instabug/survey/ui/g/b;->g:Lcom/instabug/survey/ui/g/b$b;

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    move-object v4, p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    move-object v4, p0

    .line 11
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 12
    sget p0, Lcom/instabug/survey/ui/g/b;->d:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 13
    iget p0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput p0, Lcom/instabug/survey/ui/g/b;->d:I

    :cond_2
    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/MotionEvent;ZZLcom/instabug/survey/ui/g/b$b;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static a(FFFF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 154
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p2, p3

    .line 155
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 156
    sget p2, Lcom/instabug/survey/ui/g/b;->a:I

    int-to-float p2, p2

    cmpl-float p0, p0, p2

    if-gtz p0, :cond_0

    cmpl-float p0, p1, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    sput v0, Lcom/instabug/survey/ui/g/b;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    sput v0, Lcom/instabug/survey/ui/g/b;->c:F

    return-void
.end method
