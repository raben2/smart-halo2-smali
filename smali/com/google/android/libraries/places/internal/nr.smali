.class public enum Lcom/google/android/libraries/places/internal/nr;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/nr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum b:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum c:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum d:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum e:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum f:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum g:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum h:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum i:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum j:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum k:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum l:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum m:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum n:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum o:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum p:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum q:Lcom/google/android/libraries/places/internal/nr;

.field public static final enum r:Lcom/google/android/libraries/places/internal/nr;

.field private static final synthetic u:[Lcom/google/android/libraries/places/internal/nr;


# instance fields
.field public final s:Lcom/google/android/libraries/places/internal/ns;

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->d:Lcom/google/android/libraries/places/internal/ns;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->a:Lcom/google/android/libraries/places/internal/nr;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->c:Lcom/google/android/libraries/places/internal/ns;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->b:Lcom/google/android/libraries/places/internal/nr;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->b:Lcom/google/android/libraries/places/internal/ns;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->c:Lcom/google/android/libraries/places/internal/nr;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->b:Lcom/google/android/libraries/places/internal/ns;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->d:Lcom/google/android/libraries/places/internal/nr;

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "INT32"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->a:Lcom/google/android/libraries/places/internal/ns;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->e:Lcom/google/android/libraries/places/internal/nr;

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->b:Lcom/google/android/libraries/places/internal/ns;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->f:Lcom/google/android/libraries/places/internal/nr;

    .line 14
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "FIXED32"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->a:Lcom/google/android/libraries/places/internal/ns;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->g:Lcom/google/android/libraries/places/internal/nr;

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "BOOL"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->e:Lcom/google/android/libraries/places/internal/ns;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->h:Lcom/google/android/libraries/places/internal/nr;

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v12, "STRING"

    sget-object v14, Lcom/google/android/libraries/places/internal/ns;->f:Lcom/google/android/libraries/places/internal/ns;

    const/16 v13, 0x8

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IC)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->i:Lcom/google/android/libraries/places/internal/nr;

    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v18, "GROUP"

    sget-object v20, Lcom/google/android/libraries/places/internal/ns;->i:Lcom/google/android/libraries/places/internal/ns;

    const/16 v19, 0x9

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IS)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->j:Lcom/google/android/libraries/places/internal/nr;

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v12, "MESSAGE"

    sget-object v14, Lcom/google/android/libraries/places/internal/ns;->i:Lcom/google/android/libraries/places/internal/ns;

    const/16 v13, 0xa

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->k:Lcom/google/android/libraries/places/internal/nr;

    .line 19
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v18, "BYTES"

    sget-object v20, Lcom/google/android/libraries/places/internal/ns;->g:Lcom/google/android/libraries/places/internal/ns;

    const/16 v19, 0xb

    const/16 v21, 0x2

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->l:Lcom/google/android/libraries/places/internal/nr;

    .line 20
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "UINT32"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->a:Lcom/google/android/libraries/places/internal/ns;

    const/16 v11, 0xc

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->m:Lcom/google/android/libraries/places/internal/nr;

    .line 21
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "ENUM"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->h:Lcom/google/android/libraries/places/internal/ns;

    const/16 v12, 0xd

    invoke-direct {v0, v1, v12, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->n:Lcom/google/android/libraries/places/internal/nr;

    .line 22
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "SFIXED32"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->a:Lcom/google/android/libraries/places/internal/ns;

    const/16 v13, 0xe

    invoke-direct {v0, v1, v13, v2, v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->o:Lcom/google/android/libraries/places/internal/nr;

    .line 23
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "SFIXED64"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->b:Lcom/google/android/libraries/places/internal/ns;

    const/16 v14, 0xf

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->p:Lcom/google/android/libraries/places/internal/nr;

    .line 24
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "SINT32"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->a:Lcom/google/android/libraries/places/internal/ns;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->q:Lcom/google/android/libraries/places/internal/nr;

    .line 25
    new-instance v0, Lcom/google/android/libraries/places/internal/nr;

    const-string v1, "SINT64"

    sget-object v2, Lcom/google/android/libraries/places/internal/ns;->b:Lcom/google/android/libraries/places/internal/ns;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->r:Lcom/google/android/libraries/places/internal/nr;

    const/16 v0, 0x12

    .line 26
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/nr;

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->a:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->b:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->c:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->d:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->e:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->f:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->g:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->h:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->i:Lcom/google/android/libraries/places/internal/nr;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->j:Lcom/google/android/libraries/places/internal/nr;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->k:Lcom/google/android/libraries/places/internal/nr;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->l:Lcom/google/android/libraries/places/internal/nr;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->m:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->n:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->o:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->p:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->q:Lcom/google/android/libraries/places/internal/nr;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/nr;->r:Lcom/google/android/libraries/places/internal/nr;

    aput-object v1, v0, v15

    sput-object v0, Lcom/google/android/libraries/places/internal/nr;->u:[Lcom/google/android/libraries/places/internal/nr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/ns;",
            "I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/nr;->s:Lcom/google/android/libraries/places/internal/ns;

    .line 5
    iput p4, p0, Lcom/google/android/libraries/places/internal/nr;->t:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IB)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IC)V
    .locals 6

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IB)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;II)V
    .locals 6

    const/16 v2, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IB)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IS)V
    .locals 6

    const/16 v2, 0x9

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IB)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IZ)V
    .locals 6

    const/16 v2, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/nr;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/ns;IB)V

    return-void
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/nr;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/nr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/nr;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/nr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/nr;->u:[Lcom/google/android/libraries/places/internal/nr;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/nr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/nr;

    return-object v0
.end method
