.class Lcom/instabug/library/annotation/AnnotationLayout$g;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapWorkerTask$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/annotation/AnnotationLayout;->setBaseImage(Landroid/net/Uri;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/instabug/library/annotation/AnnotationLayout;


# direct methods
.method constructor <init>(Lcom/instabug/library/annotation/AnnotationLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$g;->b:Lcom/instabug/library/annotation/AnnotationLayout;

    iput-object p2, p0, Lcom/instabug/library/annotation/AnnotationLayout$g;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$g;->b:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/AnnotationLayout;->access$700(Lcom/instabug/library/annotation/AnnotationLayout;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$g;->b:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/AnnotationLayout;->access$800(Lcom/instabug/library/annotation/AnnotationLayout;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$g;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method