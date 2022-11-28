.class public final enum Lcom/google/android/libraries/places/internal/iy$b;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ky;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/iy$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/ky;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/iy$b;

.field public static final enum b:Lcom/google/android/libraries/places/internal/iy$b;

.field public static final enum c:Lcom/google/android/libraries/places/internal/iy$b;

.field public static final enum d:Lcom/google/android/libraries/places/internal/iy$b;

.field public static final enum e:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum g:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum h:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum i:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum j:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum k:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum l:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum m:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum n:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum o:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum p:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum q:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final enum r:Lcom/google/android/libraries/places/internal/iy$b;

.field private static final synthetic s:[Lcom/google/android/libraries/places/internal/iy$b;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACES_QUERY"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->a:Lcom/google/android/libraries/places/internal/iy$b;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACE_OBJECT_ACCESS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->g:Lcom/google/android/libraries/places/internal/iy$b;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACE_REPORT"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->h:Lcom/google/android/libraries/places/internal/iy$b;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACE_PICKER_RESULT"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->i:Lcom/google/android/libraries/places/internal/iy$b;

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACE_PHOTO_QUERY"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->b:Lcom/google/android/libraries/places/internal/iy$b;

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "GET_CURRENT_PLACE"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->c:Lcom/google/android/libraries/places/internal/iy$b;

    .line 14
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "NEARBY_ALERT_REQUEST"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->j:Lcom/google/android/libraries/places/internal/iy$b;

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "NEARBY_ALERT"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->k:Lcom/google/android/libraries/places/internal/iy$b;

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACE_UPDATE_REQUEST"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->l:Lcom/google/android/libraries/places/internal/iy$b;

    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "AUTOCOMPLETE_WIDGET_SESSION"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->d:Lcom/google/android/libraries/places/internal/iy$b;

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "GEOFENCE_STATUS"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->m:Lcom/google/android/libraries/places/internal/iy$b;

    .line 19
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "SERVER_RESPONSE"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v13}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->n:Lcom/google/android/libraries/places/internal/iy$b;

    .line 20
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "COUNT_OPERATION"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->o:Lcom/google/android/libraries/places/internal/iy$b;

    .line 21
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "PLACES_BOUNDS_REFRESH"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->p:Lcom/google/android/libraries/places/internal/iy$b;

    .line 22
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "HAS_PERSONALIZED_DATA_ACCESS"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->q:Lcom/google/android/libraries/places/internal/iy$b;

    .line 23
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "NETWORK_REQUEST_EVENT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->e:Lcom/google/android/libraries/places/internal/iy$b;

    .line 24
    new-instance v0, Lcom/google/android/libraries/places/internal/iy$b;

    const-string v1, "SEMANTIC_LOCATION_PROVIDER_EVENT"

    const/16 v14, 0x11

    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/libraries/places/internal/iy$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->r:Lcom/google/android/libraries/places/internal/iy$b;

    const/16 v0, 0x11

    .line 25
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/iy$b;

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->a:Lcom/google/android/libraries/places/internal/iy$b;

    const/4 v14, 0x0

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->g:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->h:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->i:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->b:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->c:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->j:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->k:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->l:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->d:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->m:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->n:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->o:Lcom/google/android/libraries/places/internal/iy$b;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->p:Lcom/google/android/libraries/places/internal/iy$b;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->q:Lcom/google/android/libraries/places/internal/iy$b;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->e:Lcom/google/android/libraries/places/internal/iy$b;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->r:Lcom/google/android/libraries/places/internal/iy$b;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/libraries/places/internal/iy$b;->s:[Lcom/google/android/libraries/places/internal/iy$b;

    .line 26
    new-instance v0, Lcom/google/android/libraries/places/internal/iz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/iz;-><init>()V

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/iy$b;->f:I

    return-void
.end method

.method public static b()Lcom/google/android/libraries/places/internal/kz;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/ja;->a:Lcom/google/android/libraries/places/internal/kz;

    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/iy$b;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/iy$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/iy$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/iy$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/iy$b;->s:[Lcom/google/android/libraries/places/internal/iy$b;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/iy$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/iy$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/iy$b;->f:I

    return v0
.end method
