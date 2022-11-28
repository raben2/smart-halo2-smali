.class public Llayout/adapters/SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsAdapter.java"


# static fields
.field public static final TYPE_COUNT:I = 0x2

.field public static final TYPE_RESULT:I = 0x0

.field public static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/adapters/SearchResultsAdapter;->results:Ljava/util/List;

    .line 29
    iput-object p1, p0, Llayout/adapters/SearchResultsAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Llayout/adapters/SearchResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lbike/smarthalo/app/models/SHLocation;
    .locals 1

    .line 44
    iget-object v0, p0, Llayout/adapters/SearchResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHLocation;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Llayout/adapters/SearchResultsAdapter;->getItem(I)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Llayout/adapters/SearchResultsAdapter;->getItem(I)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 76
    invoke-virtual {p0, p1}, Llayout/adapters/SearchResultsAdapter;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 77
    iget-object p1, p0, Llayout/adapters/SearchResultsAdapter;->context:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d0124

    const/4 p3, 0x0

    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 86
    new-instance p2, Llayout/SearchResultItemLayout;

    iget-object p3, p0, Llayout/adapters/SearchResultsAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Llayout/SearchResultItemLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 92
    :goto_0
    move-object p3, p2

    check-cast p3, Llayout/SearchResultItemLayout;

    .line 94
    invoke-virtual {p0, p1}, Llayout/adapters/SearchResultsAdapter;->getItem(I)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {p3}, Llayout/SearchResultItemLayout;->handleFinishInflate()V

    .line 98
    :cond_2
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Llayout/SearchResultItemLayout;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p3}, Llayout/SearchResultItemLayout;->setTitleGone()V

    .line 103
    :goto_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Llayout/SearchResultItemLayout;->setSubString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    const v2, 0x7f0600e9

    if-ne v0, v1, :cond_4

    .line 105
    iget-object p1, p0, Llayout/adapters/SearchResultsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1103bf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setString(Ljava/lang/String;)V

    const p1, 0x7f08005d

    .line 106
    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setDrawable(I)V

    .line 107
    invoke-virtual {p3, v2}, Llayout/SearchResultItemLayout;->setDrawableColor(I)V

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 109
    iget-object p1, p0, Llayout/adapters/SearchResultsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1103c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setString(Ljava/lang/String;)V

    const p1, 0x7f08005f

    .line 110
    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setDrawable(I)V

    .line 111
    invoke-virtual {p3, v2}, Llayout/SearchResultItemLayout;->setDrawableColor(I)V

    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const p1, 0x7f08005c

    .line 113
    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setDrawable(I)V

    .line 114
    invoke-virtual {p3, v2}, Llayout/SearchResultItemLayout;->setDrawableColor(I)V

    goto :goto_2

    .line 115
    :cond_6
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    const p1, 0x7f08010d

    .line 116
    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setDrawable(I)V

    .line 117
    invoke-virtual {p3, v2}, Llayout/SearchResultItemLayout;->setDrawableColor(I)V

    goto :goto_2

    :cond_7
    const p1, 0x7f080228

    .line 119
    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setDrawable(I)V

    const p1, 0x7f060128

    .line 120
    invoke-virtual {p3, p1}, Llayout/SearchResultItemLayout;->setDrawableColor(I)V

    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 69
    invoke-virtual {p0, p1}, Llayout/adapters/SearchResultsAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Llayout/adapters/SearchResultsAdapter;->results:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Llayout/adapters/SearchResultsAdapter;->notifyDataSetChanged()V

    return-void
.end method
