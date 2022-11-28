.class public Lcom/instabug/featuresrequest/ui/b/c/a;
.super Landroid/widget/BaseAdapter;
.source "FeatureAdapter.java"


# instance fields
.field private a:Lcom/instabug/featuresrequest/ui/b/c/f;

.field private b:Lcom/instabug/featuresrequest/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/f;Lcom/instabug/featuresrequest/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/a;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    .line 3
    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/a;->b:Lcom/instabug/featuresrequest/c/a;

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/b/c/a;)Lcom/instabug/featuresrequest/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/b/c/a;->b:Lcom/instabug/featuresrequest/c/a;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/a;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->a()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_feature_request_item:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/instabug/featuresrequest/ui/b/c/b;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/a;->b:Lcom/instabug/featuresrequest/c/a;

    invoke-direct {p3, p2, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;-><init>(Landroid/view/View;Lcom/instabug/featuresrequest/c/a;)V

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/instabug/featuresrequest/ui/b/c/b;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/a;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0, p1, p3}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(ILcom/instabug/featuresrequest/ui/b/c/b;)V

    .line 12
    new-instance p3, Lcom/instabug/featuresrequest/ui/b/c/a$a;

    invoke-direct {p3, p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/a$a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/a;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
