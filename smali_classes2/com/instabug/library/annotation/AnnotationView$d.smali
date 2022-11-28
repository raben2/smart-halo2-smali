.class Lcom/instabug/library/annotation/AnnotationView$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AnnotationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/annotation/AnnotationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/annotation/AnnotationView;


# direct methods
.method private constructor <init>(Lcom/instabug/library/annotation/AnnotationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationView$d;->a:Lcom/instabug/library/annotation/AnnotationView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/annotation/AnnotationView;Lcom/instabug/library/annotation/AnnotationView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/AnnotationView$d;-><init>(Lcom/instabug/library/annotation/AnnotationView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/annotation/AnnotationView;->e()Lcom/instabug/library/annotation/c;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView$d;->a:Lcom/instabug/library/annotation/AnnotationView;

    invoke-static {p1}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/AnnotationView;)Lcom/instabug/library/annotation/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView$d;->a:Lcom/instabug/library/annotation/AnnotationView;

    invoke-static {p1}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/AnnotationView;)Lcom/instabug/library/annotation/d;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/annotation/AnnotationView;->e()Lcom/instabug/library/annotation/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instabug/library/annotation/d;->d(Lcom/instabug/library/annotation/c;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/annotation/AnnotationView;->e()Lcom/instabug/library/annotation/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/instabug/library/annotation/c;->a(Z)V

    .line 4
    invoke-static {}, Lcom/instabug/library/annotation/AnnotationView;->e()Lcom/instabug/library/annotation/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/annotation/c;->b()Lcom/instabug/library/annotation/f/g;

    move-result-object p1

    instance-of p1, p1, Lcom/instabug/library/annotation/f/h;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView$d;->a:Lcom/instabug/library/annotation/AnnotationView;

    iget v1, p1, Lcom/instabug/library/annotation/AnnotationView;->G:I

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/instabug/library/annotation/AnnotationView;->G:I

    .line 6
    invoke-static {p1}, Lcom/instabug/library/annotation/AnnotationView;->b(Lcom/instabug/library/annotation/AnnotationView;)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Lcom/instabug/library/annotation/AnnotationView;->a(Lcom/instabug/library/annotation/c;)Lcom/instabug/library/annotation/c;

    .line 9
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView$d;->a:Lcom/instabug/library/annotation/AnnotationView;

    invoke-static {p1}, Lcom/instabug/library/annotation/AnnotationView;->c(Lcom/instabug/library/annotation/AnnotationView;)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationView$d;->a:Lcom/instabug/library/annotation/AnnotationView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    :cond_1
    return v0
.end method
