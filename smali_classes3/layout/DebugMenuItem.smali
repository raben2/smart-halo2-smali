.class public Llayout/DebugMenuItem;
.super Landroid/widget/RelativeLayout;
.source "DebugMenuItem.java"


# instance fields
.field private description:Ljava/lang/String;

.field private descriptionTextView:Landroid/widget/TextView;

.field private divider:Landroid/widget/ImageView;

.field private icon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Llayout/DebugMenuItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Llayout/DebugMenuItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1, p2}, Llayout/DebugMenuItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f0d00d4

    .line 42
    invoke-static {p1, v0, p0}, Llayout/DebugMenuItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0162

    .line 44
    invoke-virtual {p0, v0}, Llayout/DebugMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/DebugMenuItem;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a015f

    .line 45
    invoke-virtual {p0, v0}, Llayout/DebugMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/DebugMenuItem;->descriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0161

    .line 46
    invoke-virtual {p0, v0}, Llayout/DebugMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/DebugMenuItem;->divider:Landroid/widget/ImageView;

    .line 48
    sget-object v0, Lbike/smarthalo/app/R$styleable;->DebugMenuItem:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 54
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 55
    iget-object v0, p0, Llayout/DebugMenuItem;->divider:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Llayout/DebugMenuItem;->description:Ljava/lang/String;

    .line 58
    iget-object p2, p0, Llayout/DebugMenuItem;->descriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Llayout/DebugMenuItem;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v2}, Llayout/DebugMenuItem;->setVisibility(I)V

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setAssociatedValue(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Llayout/DebugMenuItem;->descriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/DebugMenuItem;->description:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
