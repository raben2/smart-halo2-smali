.class Lcom/instabug/featuresrequest/ui/d/c$d;
.super Ljava/lang/Object;
.source "FeaturesMainFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/d/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/d/c;->f(Lcom/instabug/featuresrequest/ui/d/c;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 5
    sget v2, Lcom/instabug/featuresrequest/R$id;->sortBy_topRated:I

    if-ne p1, v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/d/c;->f(Lcom/instabug/featuresrequest/ui/d/c;)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    sget v3, Lcom/instabug/featuresrequest/R$string;->sort_by_top_rated:I

    invoke-virtual {v2, v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/featuresrequest/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    .line 8
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {p1, v1}, Lcom/instabug/featuresrequest/ui/d/c;->a(Lcom/instabug/featuresrequest/ui/d/c;I)I

    .line 9
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/d/c;->g(Lcom/instabug/featuresrequest/ui/d/c;)I

    move-result p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/f/a;->a(I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    iget-object v1, p1, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instabug/featuresrequest/ui/d/c;->c(Z)V

    return v0

    .line 12
    :cond_1
    sget v2, Lcom/instabug/featuresrequest/R$id;->sortBy_recentlyUpdated:I

    if-ne p1, v2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/d/c;->f(Lcom/instabug/featuresrequest/ui/d/c;)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    sget v3, Lcom/instabug/featuresrequest/R$string;->sort_by_recently_updated:I

    invoke-virtual {v2, v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/featuresrequest/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    .line 15
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/d/c;->a(Lcom/instabug/featuresrequest/ui/d/c;I)I

    .line 16
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/d/c;->g(Lcom/instabug/featuresrequest/ui/d/c;)I

    move-result p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/f/a;->a(I)V

    .line 17
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$d;->a:Lcom/instabug/featuresrequest/ui/d/c;

    iget-object v1, p1, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instabug/featuresrequest/ui/d/c;->c(Z)V

    return v0

    :cond_2
    return v1
.end method
