.class Lcom/instabug/library/annotation/AnnotationLayout$d;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Lcom/instabug/library/annotation/AnnotationView$g;


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
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$d;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$d;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/AnnotationLayout;->access$400(Lcom/instabug/library/annotation/AnnotationLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
