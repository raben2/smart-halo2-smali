.class Lcom/instabug/library/annotation/AnnotationLayout$f;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/annotation/AnnotationLayout;->setViewSelector(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/instabug/library/annotation/AnnotationLayout;


# direct methods
.method constructor <init>(Lcom/instabug/library/annotation/AnnotationLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$f;->b:Lcom/instabug/library/annotation/AnnotationLayout;

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationLayout$f;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$f;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/library/util/DrawableUtils;->setDrawableTintColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$f;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/instabug/library/annotation/AnnotationLayout$f;->b:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {p2}, Lcom/instabug/library/annotation/AnnotationLayout;->access$600(Lcom/instabug/library/annotation/AnnotationLayout;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/library/util/DrawableUtils;->setDrawableTintColor(Landroid/widget/ImageView;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
