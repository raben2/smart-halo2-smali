.class public final Lcom/instabug/survey/ui/g/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/ui/g/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/survey/ui/g/a$a;


# direct methods
.method public constructor <init>(Lcom/instabug/survey/ui/g/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/ui/g/a;->a:Lcom/instabug/survey/ui/g/a$a;

    return-void
.end method

.method private a()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x45bb8000    # 6000.0f

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x453b8000    # 3000.0f

    :cond_1
    return v1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x43960000    # 300.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    cmpl-float p1, p2, v2

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/instabug/survey/ui/g/a;->a:Lcom/instabug/survey/ui/g/a$a;

    invoke-interface {p1}, Lcom/instabug/survey/ui/g/a$a;->d()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/ui/g/a;->a:Lcom/instabug/survey/ui/g/a$a;

    invoke-interface {p1}, Lcom/instabug/survey/ui/g/a$a;->f()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    cmpl-float p1, v0, v2

    if-lez p1, :cond_2

    .line 14
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lcom/instabug/survey/ui/g/a;->a()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/instabug/survey/ui/g/a;->a:Lcom/instabug/survey/ui/g/a$a;

    invoke-interface {p1}, Lcom/instabug/survey/ui/g/a$a;->c()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lcom/instabug/survey/ui/g/a;->a()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/instabug/survey/ui/g/a;->a:Lcom/instabug/survey/ui/g/a$a;

    invoke-interface {p1}, Lcom/instabug/survey/ui/g/a$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/g/a;->a:Lcom/instabug/survey/ui/g/a$a;

    invoke-interface {v0}, Lcom/instabug/survey/ui/g/a$a;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
