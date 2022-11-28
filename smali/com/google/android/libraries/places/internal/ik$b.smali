.class public final enum Lcom/google/android/libraries/places/internal/ik$b;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ky;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/ik$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/ky;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/ik$b;

.field public static final enum b:Lcom/google/android/libraries/places/internal/ik$b;

.field public static final enum c:Lcom/google/android/libraries/places/internal/ik$b;

.field public static final enum d:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum f:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum g:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum h:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum i:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum j:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum k:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum l:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum m:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum n:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum o:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum p:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final enum q:Lcom/google/android/libraries/places/internal/ik$b;

.field private static final synthetic r:[Lcom/google/android/libraries/places/internal/ik$b;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->f:Lcom/google/android/libraries/places/internal/ik$b;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "ADD_PLACE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->g:Lcom/google/android/libraries/places/internal/ik$b;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "DELETE_ALIAS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->h:Lcom/google/android/libraries/places/internal/ik$b;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "ESTIMATE_PLACES_BY_LOCATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->a:Lcom/google/android/libraries/places/internal/ik$b;

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "GET_ALIASES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->i:Lcom/google/android/libraries/places/internal/ik$b;

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "GET_AUTOCOMPLETE_PREDICTIONS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->b:Lcom/google/android/libraries/places/internal/ik$b;

    .line 14
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "GET_NEARBY_ALERT_DATA_BY_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->j:Lcom/google/android/libraries/places/internal/ik$b;

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "GET_PLACE_BY_ID"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->c:Lcom/google/android/libraries/places/internal/ik$b;

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "GET_PLACE_PHOTO_METADATA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->k:Lcom/google/android/libraries/places/internal/ik$b;

    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "SEARCH"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->l:Lcom/google/android/libraries/places/internal/ik$b;

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "SEARCH_BY_BEACON"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->m:Lcom/google/android/libraries/places/internal/ik$b;

    .line 19
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "SEARCH_BY_CHAIN"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->n:Lcom/google/android/libraries/places/internal/ik$b;

    .line 20
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "WRITE_ALIAS"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->o:Lcom/google/android/libraries/places/internal/ik$b;

    .line 21
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "SEARCH_BY_CLIENT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->p:Lcom/google/android/libraries/places/internal/ik$b;

    .line 22
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "GET_PHOTO"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->d:Lcom/google/android/libraries/places/internal/ik$b;

    .line 23
    new-instance v0, Lcom/google/android/libraries/places/internal/ik$b;

    const-string v1, "SNAP_TO_PLACE"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/libraries/places/internal/ik$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->q:Lcom/google/android/libraries/places/internal/ik$b;

    const/16 v0, 0x10

    .line 24
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/ik$b;

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->f:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->g:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->h:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->a:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->i:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->b:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->j:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->c:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->k:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->l:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->m:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->n:Lcom/google/android/libraries/places/internal/ik$b;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->o:Lcom/google/android/libraries/places/internal/ik$b;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->p:Lcom/google/android/libraries/places/internal/ik$b;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->d:Lcom/google/android/libraries/places/internal/ik$b;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->q:Lcom/google/android/libraries/places/internal/ik$b;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/libraries/places/internal/ik$b;->r:[Lcom/google/android/libraries/places/internal/ik$b;

    .line 25
    new-instance v0, Lcom/google/android/libraries/places/internal/il;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/il;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput p3, p0, Lcom/google/android/libraries/places/internal/ik$b;->e:I

    return-void
.end method

.method public static b()Lcom/google/android/libraries/places/internal/kz;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/im;->a:Lcom/google/android/libraries/places/internal/kz;

    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ik$b;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/ik$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/ik$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/ik$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/ik$b;->r:[Lcom/google/android/libraries/places/internal/ik$b;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/ik$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/ik$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/ik$b;->e:I

    return v0
.end method
