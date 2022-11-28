.class public final enum Lcom/google/android/libraries/places/internal/eu$a;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/eu$a;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/eu$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/google/android/libraries/places/internal/eu$a;

.field public static final enum b:Lcom/google/android/libraries/places/internal/eu$a;

.field public static final enum c:Lcom/google/android/libraries/places/internal/eu$a;

.field public static final enum d:Lcom/google/android/libraries/places/internal/eu$a;

.field private static final synthetic e:[Lcom/google/android/libraries/places/internal/eu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/eu$a;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/eu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/eu$a;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/eu$a;

    const-string v1, "SHOW_ERROR_CAN_RETRY_NOT_LOADING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/eu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/eu$a;->b:Lcom/google/android/libraries/places/internal/eu$a;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/eu$a;

    const-string v1, "SHOW_ERROR_CANNOT_RETRY_NOT_LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/places/internal/eu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/eu$a;->c:Lcom/google/android/libraries/places/internal/eu$a;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/eu$a;

    const-string v1, "SHOW_ERROR_WHILE_LOADING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/libraries/places/internal/eu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/eu$a;->d:Lcom/google/android/libraries/places/internal/eu$a;

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/eu$a;

    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->a:Lcom/google/android/libraries/places/internal/eu$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->b:Lcom/google/android/libraries/places/internal/eu$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->c:Lcom/google/android/libraries/places/internal/eu$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->d:Lcom/google/android/libraries/places/internal/eu$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/libraries/places/internal/eu$a;->e:[Lcom/google/android/libraries/places/internal/eu$a;

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/ew;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ew;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/eu$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/eu$a;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/eu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/eu$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/eu$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->e:[Lcom/google/android/libraries/places/internal/eu$a;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/eu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/eu$a;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/eu$a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
