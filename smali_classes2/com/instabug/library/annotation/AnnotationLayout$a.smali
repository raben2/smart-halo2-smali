.class Lcom/instabug/library/annotation/AnnotationLayout$a;
.super Ljava/lang/Object;
.source "AnnotationLayout.java"

# interfaces
.implements Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;


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
    iput-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$a;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/instabug/library/annotation/AnnotationLayout$a;->a:Lcom/instabug/library/annotation/AnnotationLayout;

    invoke-static {p1}, Lcom/instabug/library/annotation/AnnotationLayout;->access$000(Lcom/instabug/library/annotation/AnnotationLayout;)Lcom/instabug/library/annotation/AnnotationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/annotation/AnnotationView;->b()V

    :cond_0
    return-void
.end method
