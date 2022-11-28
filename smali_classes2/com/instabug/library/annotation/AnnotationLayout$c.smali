.class Lcom/instabug/library/annotation/AnnotationLayout$c;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Lcom/instabug/library/annotation/AnnotationView$h;


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
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$c;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/AnnotationLayout$c;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Path;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/instabug/library/annotation/AnnotationLayout;->access$300(Lcom/instabug/library/annotation/AnnotationLayout;[Landroid/graphics/Path;)V

    return-void
.end method
