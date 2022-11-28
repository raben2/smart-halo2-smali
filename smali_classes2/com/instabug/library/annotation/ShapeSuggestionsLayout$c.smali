.class Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;
.super Ljava/lang/Object;
.source "ShapeSuggestionsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(Landroid/graphics/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;


# direct methods
.method constructor <init>(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;->a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;->a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;->a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    invoke-static {v0, p1}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;->a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;->a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    invoke-static {v0}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a(Lcom/instabug/library/annotation/ShapeSuggestionsLayout;)Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$d;->a(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/annotation/ShapeSuggestionsLayout$c;->a:Lcom/instabug/library/annotation/ShapeSuggestionsLayout;

    invoke-virtual {p1}, Lcom/instabug/library/annotation/ShapeSuggestionsLayout;->a()V

    return-void
.end method
