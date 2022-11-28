.class public Llayout/statusBar/StatusBarHelpCardAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "StatusBarHelpCardAdapter.java"


# instance fields
.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    return-void
.end method

.method private getHelpCardVideo(Landroid/view/View;)Llayout/statusBar/HelpCardVideo;
    .locals 1

    .line 84
    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 89
    instance-of v0, p1, Llayout/statusBar/HelpCardVideo;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Llayout/statusBar/HelpCardVideo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addView(Landroid/view/View;)I
    .locals 1

    .line 50
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Llayout/statusBar/StatusBarHelpCardAdapter;->addView(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public addView(Landroid/view/View;I)I
    .locals 1

    .line 54
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 37
    iget-object p3, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 21
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    return p1
.end method

.method public getView(I)Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public playVideoAtIndex(ILandroid/content/Context;)V
    .locals 1

    .line 74
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Llayout/statusBar/StatusBarHelpCardAdapter;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Llayout/statusBar/StatusBarHelpCardAdapter;->getHelpCardVideo(Landroid/view/View;)Llayout/statusBar/HelpCardVideo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1, p2}, Llayout/statusBar/HelpCardVideo;->playVideo(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public stopAllVideos()V
    .locals 2

    .line 63
    iget-object v0, p0, Llayout/statusBar/StatusBarHelpCardAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 64
    invoke-direct {p0, v1}, Llayout/statusBar/StatusBarHelpCardAdapter;->getHelpCardVideo(Landroid/view/View;)Llayout/statusBar/HelpCardVideo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Llayout/statusBar/HelpCardVideo;->stopVideo()V

    .line 68
    invoke-virtual {v1}, Llayout/statusBar/HelpCardVideo;->removeFocus()V

    goto :goto_0

    :cond_1
    return-void
.end method
