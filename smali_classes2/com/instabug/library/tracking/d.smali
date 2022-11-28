.class public Lcom/instabug/library/tracking/d;
.super Ljava/lang/Object;
.source "InstabugTouchEventsTracker.java"


# static fields
.field private static a:Lcom/instabug/library/tracking/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instabug/library/tracking/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/tracking/d;->a:Lcom/instabug/library/tracking/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/tracking/d;

    invoke-direct {v0}, Lcom/instabug/library/tracking/d;-><init>()V

    sput-object v0, Lcom/instabug/library/tracking/d;->a:Lcom/instabug/library/tracking/d;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/tracking/d;->a:Lcom/instabug/library/tracking/d;

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    new-array v0, v0, [Lcom/instabug/library/e$a;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    new-instance v2, Lcom/instabug/library/e$a;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lcom/instabug/library/e$a;-><init>(II)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/instabug/library/e;->a()Lcom/instabug/library/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/e;->a([Lcom/instabug/library/e$a;)V

    .line 10
    invoke-static {}, Lcom/instabug/library/p/a;->a()Lcom/instabug/library/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/p/a;->a(Landroid/view/MotionEvent;)V

    return-void
.end method
