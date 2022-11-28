.class Lcom/instabug/library/annotation/AnnotationLayout$e;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Lcom/instabug/library/annotation/ColorPickerPopUpView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/annotation/AnnotationLayout;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/annotation/AnnotationLayout;


# direct methods
.method constructor <init>(Lcom/instabug/library/annotation/AnnotationLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$e;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/instabug/library/annotation/AnnotationLayout$e;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {p2}, Lcom/instabug/library/annotation/AnnotationLayout;->access$000(Lcom/instabug/library/annotation/AnnotationLayout;)Lcom/instabug/library/annotation/AnnotationView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/instabug/library/annotation/AnnotationView;->setDrawingColor(I)V

    .line 2
    iget-object p2, p0, Lcom/instabug/library/annotation/AnnotationLayout$e;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {p2}, Lcom/instabug/library/annotation/AnnotationLayout;->access$100(Lcom/instabug/library/annotation/AnnotationLayout;)Lcom/instabug/library/annotation/ColorPickerPopUpView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/instabug/library/annotation/AnnotationLayout$e;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {p2}, Lcom/instabug/library/annotation/AnnotationLayout;->access$500(Lcom/instabug/library/annotation/AnnotationLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
