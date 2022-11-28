.class Lcom/instabug/bug/view/g/c$a;
.super Ljava/lang/Object;
.source "DisclaimerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/g/c;->initViews(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/g/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/g/c$a;->a:Lcom/instabug/bug/view/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/bug/view/g/c$a;->a:Lcom/instabug/bug/view/g/c;

    iget-object p1, p1, Lcom/instabug/bug/view/g/c;->b:Lcom/instabug/bug/view/g/e;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Lcom/instabug/bug/view/g/e;->getItem(I)Lcom/instabug/bug/view/g/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/instabug/bug/view/g/a;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/instabug/bug/view/g/c$a;->a:Lcom/instabug/bug/view/g/c;

    invoke-static {p2, p1}, Lcom/instabug/bug/view/g/c;->a(Lcom/instabug/bug/view/g/c;Lcom/instabug/bug/view/g/a;)V

    :cond_0
    return-void
.end method
