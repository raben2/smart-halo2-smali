.class public final Lcom/google/android/libraries/places/internal/ex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ListAdapter;


# instance fields
.field public final a:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field public final b:Lcom/google/android/libraries/places/internal/fh;

.field public c:Lcom/google/android/gms/tasks/CancellationTokenSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public d:Z

.field public e:Lcom/google/android/libraries/places/internal/fe;

.field public f:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

.field public g:Lcom/google/android/libraries/places/internal/fy;

.field public h:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private final i:Landroid/content/Context;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/libraries/places/internal/fa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/api/net/PlacesClient;Lcom/google/android/libraries/places/internal/fh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->j:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/google/android/libraries/places/internal/fa;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/fa;-><init>(Lcom/google/android/libraries/places/internal/ex;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->k:Lcom/google/android/libraries/places/internal/fa;

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->i:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 6
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ex;->b:Lcom/google/android/libraries/places/internal/fh;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/fh;->a()Lcom/google/android/libraries/places/internal/ha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ha;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lcom/google/android/libraries/places/internal/fe;->f:Lcom/google/android/libraries/places/internal/fe;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    return-void

    .line 9
    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/fe;->g:Lcom/google/android/libraries/places/internal/fe;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    return-void
.end method

.method static a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 121
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 122
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    .line 123
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/google/android/libraries/places/api/model/AutocompletePrediction;)V
    .locals 8

    .line 76
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ex;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 79
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    .line 80
    new-instance v7, Lcom/google/android/libraries/places/internal/fe;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    const/4 v6, 0x0

    move-object v1, v7

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/fe;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    .line 81
    invoke-virtual {p0, v7}, Lcom/google/android/libraries/places/internal/ex;->a(Lcom/google/android/libraries/places/internal/fe;)V

    .line 83
    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ex;->b:Lcom/google/android/libraries/places/internal/fh;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/fh;->a()Lcom/google/android/libraries/places/internal/ha;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ex;->h:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ex;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 88
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/api/net/PlacesClient;->fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/ey;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/ey;-><init>(Lcom/google/android/libraries/places/internal/ex;)V

    .line 89
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/ez;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/ez;-><init>(Lcom/google/android/libraries/places/internal/ex;)V

    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ex;->getCount()I

    move-result v4

    if-le v4, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 46
    :goto_2
    sget v4, Lcom/google/android/libraries/places/R$id;->places_autocomplete_progress:I

    .line 47
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 48
    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_separator:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/16 v3, 0x8

    .line 51
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 5

    .line 53
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/ex;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 54
    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_prediction_primary_text:I

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    sget v1, Lcom/google/android/libraries/places/R$id;->places_autocomplete_prediction_secondary_text:I

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/places/R$color;->places_autocomplete_prediction_primary_text_highlight:I

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 62
    invoke-virtual {p2, v2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPrimaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object v2

    const/4 v3, 0x0

    .line 63
    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getSecondaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object p2

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 68
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 70
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/places/internal/fe;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    sget-object v1, Lcom/google/android/libraries/places/internal/fe;->f:Lcom/google/android/libraries/places/internal/fe;

    if-ne v0, v1, :cond_0

    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    .line 103
    iget v0, p1, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/libraries/places/internal/fe;->a:I

    if-ne v0, v2, :cond_5

    :cond_1
    const-string v0, "Places"

    .line 104
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "Unknown"

    :goto_0
    const-string v1, "Places"

    const-string v2, "Error while autocompleting: "

    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_4
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->f:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    if-eqz v0, :cond_5

    .line 112
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V

    .line 113
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 114
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 115
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_3

    .line 116
    :cond_6
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_3

    .line 118
    :cond_7
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->g:Lcom/google/android/libraries/places/internal/fy;

    if-eqz p1, :cond_8

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/fy;->a(Lcom/google/android/libraries/places/internal/fe;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2333
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ex;->d:Z

    return v0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return v2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->k:Lcom/google/android/libraries/places/internal/fa;

    return-object v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-object v2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    return-object p1

    :cond_1
    return-object v2
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return v2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ex;->getItemViewType(I)I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ex;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p1, "Places"

    const/4 p3, 0x6

    .line 39
    invoke-static {p1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Places"

    const-string p3, "Unknown view type."

    .line 40
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    if-nez p2, :cond_0

    .line 36
    sget p2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_item_prediction:I

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/places/internal/ex;->a(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    .line 31
    sget p1, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_item_powered_by_google:I

    .line 32
    invoke-virtual {v1, p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/ex;->a(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ex;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ex;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 73
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fe;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/ex;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    invoke-virtual {p0, p3, p1}, Lcom/google/android/libraries/places/internal/ex;->a(ILcom/google/android/libraries/places/api/model/AutocompletePrediction;)V

    :cond_0
    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
