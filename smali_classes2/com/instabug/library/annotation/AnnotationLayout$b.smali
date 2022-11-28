.class Lcom/instabug/library/annotation/AnnotationLayout$b;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Lcom/instabug/library/annotation/AnnotationView$f;


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
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$b;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$b;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/AnnotationLayout;->access$100(Lcom/instabug/library/annotation/AnnotationLayout;)Lcom/instabug/library/annotation/ColorPickerPopUpView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$b;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/AnnotationLayout;->access$100(Lcom/instabug/library/annotation/AnnotationLayout;)Lcom/instabug/library/annotation/ColorPickerPopUpView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$b;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/AnnotationLayout;->access$200(Lcom/instabug/library/annotation/AnnotationLayout;)Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a()V

    return-void
.end method
