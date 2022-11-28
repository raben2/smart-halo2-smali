.class Lcom/instabug/library/view/ScaleImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/view/ScaleImageView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/view/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/instabug/library/view/ScaleImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/view/ScaleImageView$a;->a:Lcom/instabug/library/view/ScaleImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/view/ScaleImageView$a;->a:Lcom/instabug/library/view/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/view/ScaleImageView;->maxZoomTo(II)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/view/ScaleImageView$a;->a:Lcom/instabug/library/view/ScaleImageView;

    invoke-virtual {v0}, Lcom/instabug/library/view/ScaleImageView;->cutting()V

    .line 3
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
