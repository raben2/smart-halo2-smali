.class public final enum Lcom/google/android/libraries/places/internal/lf;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/lf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum b:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum c:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum d:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum e:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum f:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum g:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum h:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum i:Lcom/google/android/libraries/places/internal/lf;

.field public static final enum j:Lcom/google/android/libraries/places/internal/lf;

.field private static final synthetic l:[Lcom/google/android/libraries/places/internal/lf;


# instance fields
.field public final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 6
    new-instance v6, Lcom/google/android/libraries/places/internal/lf;

    const-string v1, "VOID"

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/android/libraries/places/internal/lf;->a:Lcom/google/android/libraries/places/internal/lf;

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v8, "INT"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->b:Lcom/google/android/libraries/places/internal/lf;

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v3, "LONG"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->c:Lcom/google/android/libraries/places/internal/lf;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v9, "FLOAT"

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->d:Lcom/google/android/libraries/places/internal/lf;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v3, "DOUBLE"

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->e:Lcom/google/android/libraries/places/internal/lf;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v9, "BOOLEAN"

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->f:Lcom/google/android/libraries/places/internal/lf;

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v3, "STRING"

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-string v7, ""

    const/4 v4, 0x6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->g:Lcom/google/android/libraries/places/internal/lf;

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v9, "BYTE_STRING"

    const-class v11, Lcom/google/android/libraries/places/internal/kc;

    const-class v12, Lcom/google/android/libraries/places/internal/kc;

    sget-object v13, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/kc;

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->h:Lcom/google/android/libraries/places/internal/lf;

    .line 14
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v3, "ENUM"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const/16 v4, 0x8

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->i:Lcom/google/android/libraries/places/internal/lf;

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/lf;

    const-string v9, "MESSAGE"

    const-class v11, Ljava/lang/Object;

    const-class v12, Ljava/lang/Object;

    const/16 v10, 0x9

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/libraries/places/internal/lf;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->j:Lcom/google/android/libraries/places/internal/lf;

    const/16 v0, 0xa

    .line 16
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/lf;

    sget-object v2, Lcom/google/android/libraries/places/internal/lf;->a:Lcom/google/android/libraries/places/internal/lf;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->b:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->c:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->d:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->e:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->f:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->g:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->h:Lcom/google/android/libraries/places/internal/lf;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->i:Lcom/google/android/libraries/places/internal/lf;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/lf;->j:Lcom/google/android/libraries/places/internal/lf;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/libraries/places/internal/lf;->l:[Lcom/google/android/libraries/places/internal/lf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/lf;->k:Ljava/lang/Class;

    return-void
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/lf;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/lf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/lf;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/lf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/lf;->l:[Lcom/google/android/libraries/places/internal/lf;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/lf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/lf;

    return-object v0
.end method
