.class public final enum Lcom/google/android/libraries/places/internal/dw$b;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/dw$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/dw$b;

.field public static final enum b:Lcom/google/android/libraries/places/internal/dw$b;

.field private static final synthetic c:[Lcom/google/android/libraries/places/internal/dw$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/dw$b;

    const-string v1, "PROGRAMMATIC_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/dw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/dw$b;->a:Lcom/google/android/libraries/places/internal/dw$b;

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/dw$b;

    const-string v1, "AUTOCOMPLETE_WIDGET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/dw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/dw$b;->b:Lcom/google/android/libraries/places/internal/dw$b;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/dw$b;

    sget-object v1, Lcom/google/android/libraries/places/internal/dw$b;->a:Lcom/google/android/libraries/places/internal/dw$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/dw$b;->b:Lcom/google/android/libraries/places/internal/dw$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/places/internal/dw$b;->c:[Lcom/google/android/libraries/places/internal/dw$b;

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

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/dw$b;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/dw$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/dw$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/dw$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/dw$b;->c:[Lcom/google/android/libraries/places/internal/dw$b;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/dw$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/dw$b;

    return-object v0
.end method
