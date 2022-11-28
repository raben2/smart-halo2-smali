.class Lcom/instabug/library/p/a$d;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MotionEventRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/p/a;


# direct methods
.method private constructor <init>(Lcom/instabug/library/p/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/p/a$d;->a:Lcom/instabug/library/p/a;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/p/a;Lcom/instabug/library/p/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/p/a$d;-><init>(Lcom/instabug/library/p/a;)V

    return-void
.end method


# virtual methods
.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/p/a$d;->a:Lcom/instabug/library/p/a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    const-string v2, "PINCH"

    .line 3
    invoke-virtual {v0, v2, v1, p1}, Lcom/instabug/library/p/a;->a(Ljava/lang/String;FF)V

    const/4 p1, 0x1

    return p1
.end method
