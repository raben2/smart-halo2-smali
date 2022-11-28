.class Lcom/instabug/featuresrequest/ui/b/c/e$a;
.super Ljava/lang/Object;
.source "FeaturesListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/b/c/e;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/b/c/e;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e$a;->a:Lcom/instabug/featuresrequest/ui/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    if-lez p4, :cond_0

    if-ne p2, p4, :cond_0

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e$a;->a:Lcom/instabug/featuresrequest/ui/b/c/e;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/e;->a(Lcom/instabug/featuresrequest/ui/b/c/e;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e$a;->a:Lcom/instabug/featuresrequest/ui/b/c/e;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/ui/b/c/e;->a(Lcom/instabug/featuresrequest/ui/b/c/e;Z)Z

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e$a;->a:Lcom/instabug/featuresrequest/ui/b/c/e;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/e;->b(Lcom/instabug/featuresrequest/ui/b/c/e;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e$a;->a:Lcom/instabug/featuresrequest/ui/b/c/e;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/e;->c(Lcom/instabug/featuresrequest/ui/b/c/e;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->f()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
