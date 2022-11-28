.class public final Lcom/google/android/libraries/places/internal/br;
.super Lcom/google/android/libraries/places/api/model/Place$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/libraries/places/api/model/AddressComponents;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/maps/model/LatLng;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/libraries/places/api/model/PlusCode;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Double;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Integer;

.field private o:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private p:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Place$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/libraries/places/api/model/Place;
    .locals 20

    move-object/from16 v0, p0

    .line 35
    new-instance v18, Lcom/google/android/libraries/places/internal/cq;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/br;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/br;->b:Lcom/google/android/libraries/places/api/model/AddressComponents;

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/br;->c:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/libraries/places/internal/br;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/places/internal/br;->e:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/br;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/places/internal/br;->g:Lcom/google/android/libraries/places/api/model/OpeningHours;

    iget-object v9, v0, Lcom/google/android/libraries/places/internal/br;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/libraries/places/internal/br;->i:Ljava/util/List;

    iget-object v11, v0, Lcom/google/android/libraries/places/internal/br;->j:Lcom/google/android/libraries/places/api/model/PlusCode;

    iget-object v12, v0, Lcom/google/android/libraries/places/internal/br;->k:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/google/android/libraries/places/internal/br;->l:Ljava/lang/Double;

    iget-object v14, v0, Lcom/google/android/libraries/places/internal/br;->m:Ljava/util/List;

    iget-object v15, v0, Lcom/google/android/libraries/places/internal/br;->n:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/br;->o:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/br;->p:Landroid/net/Uri;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/google/android/libraries/places/internal/cq;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AddressComponents;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/Double;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;)V

    return-object v18
.end method

.method public final setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setAddressComponents(Lcom/google/android/libraries/places/api/model/AddressComponents;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/AddressComponents;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->b:Lcom/google/android/libraries/places/api/model/AddressComponents;

    return-object p0
.end method

.method public final setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->c:Ljava/util/List;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->e:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/OpeningHours;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->g:Lcom/google/android/libraries/places/api/model/OpeningHours;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->i:Ljava/util/List;

    return-object p0
.end method

.method public final setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/PlusCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->j:Lcom/google/android/libraries/places/api/model/PlusCode;

    return-object p0
.end method

.method public final setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->l:Ljava/lang/Double;

    return-object p0
.end method

.method public final setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->m:Ljava/util/List;

    return-object p0
.end method

.method public final setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->o:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->p:Landroid/net/Uri;

    return-object p0
.end method
