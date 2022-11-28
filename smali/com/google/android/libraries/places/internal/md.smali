.class final Lcom/google/android/libraries/places/internal/md;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/mp<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/libraries/places/internal/ma;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/google/android/libraries/places/internal/mg;

.field private final p:Lcom/google/android/libraries/places/internal/lm;

.field private final q:Lcom/google/android/libraries/places/internal/nf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/nf<",
            "**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/libraries/places/internal/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kn<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/libraries/places/internal/lw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 2745
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/libraries/places/internal/md;->a:[I

    .line 2746
    invoke-static {}, Lcom/google/android/libraries/places/internal/nk;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/md;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/ma;ZZ[IIILcom/google/android/libraries/places/internal/mg;Lcom/google/android/libraries/places/internal/lm;Lcom/google/android/libraries/places/internal/nf;Lcom/google/android/libraries/places/internal/kn;Lcom/google/android/libraries/places/internal/lw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/libraries/places/internal/ma;",
            "ZZ[III",
            "Lcom/google/android/libraries/places/internal/mg;",
            "Lcom/google/android/libraries/places/internal/lm;",
            "Lcom/google/android/libraries/places/internal/nf<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/kn<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/lw;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/md;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/md;->e:I

    .line 5
    iput p4, p0, Lcom/google/android/libraries/places/internal/md;->f:I

    .line 6
    instance-of p1, p5, Lcom/google/android/libraries/places/internal/kv;

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/md;->i:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/ma;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    .line 9
    iput-boolean p7, p0, Lcom/google/android/libraries/places/internal/md;->k:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/libraries/places/internal/md;->l:[I

    .line 11
    iput p9, p0, Lcom/google/android/libraries/places/internal/md;->m:I

    .line 12
    iput p10, p0, Lcom/google/android/libraries/places/internal/md;->n:I

    .line 13
    iput-object p11, p0, Lcom/google/android/libraries/places/internal/md;->o:Lcom/google/android/libraries/places/internal/mg;

    .line 14
    iput-object p12, p0, Lcom/google/android/libraries/places/internal/md;->p:Lcom/google/android/libraries/places/internal/lm;

    .line 15
    iput-object p13, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    .line 16
    iput-object p14, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    .line 17
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/md;->g:Lcom/google/android/libraries/places/internal/ma;

    .line 18
    iput-object p15, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/nf<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1222
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/nf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1223
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/nf;->d(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static a(Lcom/google/android/libraries/places/internal/ly;Lcom/google/android/libraries/places/internal/mg;Lcom/google/android/libraries/places/internal/lm;Lcom/google/android/libraries/places/internal/nf;Lcom/google/android/libraries/places/internal/kn;Lcom/google/android/libraries/places/internal/lw;)Lcom/google/android/libraries/places/internal/md;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/ly;",
            "Lcom/google/android/libraries/places/internal/mg;",
            "Lcom/google/android/libraries/places/internal/lm;",
            "Lcom/google/android/libraries/places/internal/nf<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/kn<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/lw;",
            ")",
            "Lcom/google/android/libraries/places/internal/md<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 20
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/mo;

    if-eqz v1, :cond_34

    .line 21
    check-cast v0, Lcom/google/android/libraries/places/internal/mo;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/mo;->a()Lcom/google/android/libraries/places/internal/ml;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/ml;->b:Lcom/google/android/libraries/places/internal/ml;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 24
    :goto_0
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/mo;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v5, 0x1

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_1

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 37
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    if-nez v9, :cond_5

    .line 53
    sget-object v8, Lcom/google/android/libraries/places/internal/md;->a:[I

    move-object v15, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v8, v12, 0x1

    .line 55
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v8, 0x1

    .line 59
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_5

    :cond_6
    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    goto :goto_6

    :cond_7
    move v12, v8

    move v8, v9

    :goto_6
    add-int/lit8 v9, v12, 0x1

    .line 64
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_7
    add-int/lit8 v13, v9, 0x1

    .line 68
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v12

    or-int/2addr v10, v9

    add-int/lit8 v12, v12, 0xd

    move v9, v13

    goto :goto_7

    :cond_8
    shl-int/2addr v9, v12

    or-int/2addr v10, v9

    goto :goto_8

    :cond_9
    move v13, v9

    :goto_8
    add-int/lit8 v9, v13, 0x1

    .line 73
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_9
    add-int/lit8 v14, v9, 0x1

    .line 77
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v13

    or-int/2addr v12, v9

    add-int/lit8 v13, v13, 0xd

    move v9, v14

    goto :goto_9

    :cond_a
    shl-int/2addr v9, v13

    or-int/2addr v9, v12

    move v12, v9

    goto :goto_a

    :cond_b
    move v14, v9

    :goto_a
    add-int/lit8 v9, v14, 0x1

    .line 82
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_b
    add-int/lit8 v15, v9, 0x1

    .line 86
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v14

    or-int/2addr v13, v9

    add-int/lit8 v14, v14, 0xd

    move v9, v15

    goto :goto_b

    :cond_c
    shl-int/2addr v9, v14

    or-int/2addr v9, v13

    move v13, v9

    goto :goto_c

    :cond_d
    move v15, v9

    :goto_c
    add-int/lit8 v9, v15, 0x1

    .line 91
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_d
    add-int/lit8 v16, v9, 0x1

    .line 95
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_e

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v15

    or-int/2addr v14, v9

    add-int/lit8 v15, v15, 0xd

    move/from16 v9, v16

    goto :goto_d

    :cond_e
    shl-int/2addr v9, v15

    or-int/2addr v9, v14

    move v14, v9

    move/from16 v9, v16

    :cond_f
    add-int/lit8 v15, v9, 0x1

    .line 100
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_11

    and-int/lit16 v9, v9, 0x1fff

    const/16 v16, 0xd

    :goto_e
    add-int/lit8 v17, v15, 0x1

    .line 104
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v9, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_e

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v9, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_f
    add-int/lit8 v18, v15, 0x1

    .line 113
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_f

    :cond_12
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_10

    :cond_13
    move/from16 v3, v16

    :goto_10
    add-int/lit8 v16, v3, 0x1

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v3

    move/from16 v3, v34

    :goto_11
    add-int/lit8 v18, v3, 0x1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_11

    :cond_14
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_15
    add-int v17, v3, v9

    add-int v15, v17, v15

    .line 127
    new-array v15, v15, [I

    shl-int/lit8 v17, v8, 0x1

    add-int v10, v17, v10

    move/from16 v34, v16

    move/from16 v16, v8

    move v8, v12

    move/from16 v12, v34

    .line 129
    :goto_12
    sget-object v6, Lcom/google/android/libraries/places/internal/md;->b:Lsun/misc/Unsafe;

    .line 131
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/mo;->c:[Ljava/lang/Object;

    .line 135
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/mo;->a:Lcom/google/android/libraries/places/internal/ma;

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move/from16 v20, v10

    mul-int/lit8 v10, v14, 0x3

    .line 137
    new-array v10, v10, [I

    const/16 v19, 0x1

    shl-int/lit8 v14, v14, 0x1

    .line 138
    new-array v14, v14, [Ljava/lang/Object;

    add-int v21, v3, v9

    move/from16 v23, v3

    move/from16 v22, v20

    move/from16 v24, v21

    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_13
    if-ge v12, v2, :cond_33

    add-int/lit8 v25, v12, 0x1

    .line 143
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v12, v2, :cond_17

    and-int/lit16 v12, v12, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v25

    move/from16 v25, v12

    move/from16 v12, v34

    :goto_14
    add-int/lit8 v28, v12, 0x1

    .line 147
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v2, :cond_16

    and-int/lit16 v2, v12, 0x1fff

    shl-int v2, v2, v27

    or-int v25, v25, v2

    add-int/lit8 v27, v27, 0xd

    move/from16 v12, v28

    const v2, 0xd800

    goto :goto_14

    :cond_16
    shl-int v2, v12, v27

    or-int v12, v25, v2

    move/from16 v2, v28

    goto :goto_15

    :cond_17
    move/from16 v2, v25

    :goto_15
    add-int/lit8 v25, v2, 0x1

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    const/16 v28, 0xd

    move/from16 v34, v25

    move/from16 v25, v2

    move/from16 v2, v34

    :goto_16
    add-int/lit8 v29, v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v28

    or-int v25, v25, v2

    add-int/lit8 v28, v28, 0xd

    move/from16 v2, v29

    const v3, 0xd800

    goto :goto_16

    :cond_18
    shl-int v2, v2, v28

    or-int v2, v25, v2

    move/from16 v3, v29

    goto :goto_17

    :cond_19
    move/from16 v3, v25

    :goto_17
    move/from16 v25, v11

    and-int/lit16 v11, v2, 0xff

    move/from16 v28, v13

    and-int/lit16 v13, v2, 0x400

    if-eqz v13, :cond_1a

    add-int/lit8 v13, v9, 0x1

    .line 163
    aput v20, v15, v9

    move v9, v13

    :cond_1a
    const/16 v13, 0x33

    move/from16 v31, v9

    if-lt v11, v13, :cond_22

    add-int/lit8 v13, v3, 0x1

    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v9, 0xd800

    if-lt v3, v9, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v32, 0xd

    :goto_18
    add-int/lit8 v33, v13, 0x1

    .line 169
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v9, :cond_1b

    and-int/lit16 v9, v13, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v3, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v13, v33

    const v9, 0xd800

    goto :goto_18

    :cond_1b
    shl-int v9, v13, v32

    or-int/2addr v3, v9

    move/from16 v13, v33

    :cond_1c
    add-int/lit8 v9, v11, -0x33

    move/from16 v32, v13

    const/16 v13, 0x9

    if-eq v9, v13, :cond_1f

    const/16 v13, 0x11

    if-ne v9, v13, :cond_1d

    goto :goto_19

    :cond_1d
    const/16 v13, 0xc

    if-ne v9, v13, :cond_1e

    and-int/lit8 v9, v5, 0x1

    const/4 v13, 0x1

    if-ne v9, v13, :cond_1e

    .line 179
    div-int/lit8 v9, v20, 0x3

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    add-int/lit8 v13, v22, 0x1

    aget-object v22, v7, v22

    aput-object v22, v14, v9

    move/from16 v22, v13

    const/4 v13, 0x1

    goto :goto_1a

    :cond_1e
    const/4 v13, 0x1

    goto :goto_1a

    .line 176
    :cond_1f
    :goto_19
    div-int/lit8 v9, v20, 0x3

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    add-int/lit8 v19, v22, 0x1

    aget-object v22, v7, v22

    aput-object v22, v14, v9

    move/from16 v22, v19

    :goto_1a
    shl-int/2addr v3, v13

    .line 181
    aget-object v9, v7, v3

    .line 182
    instance-of v13, v9, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_20

    .line 183
    check-cast v9, Ljava/lang/reflect/Field;

    move v13, v8

    goto :goto_1b

    .line 184
    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 185
    aput-object v9, v7, v3

    move v13, v8

    .line 186
    :goto_1b
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v3, v3, 0x1

    .line 188
    aget-object v8, v7, v3

    move/from16 v29, v9

    .line 189
    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 190
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 191
    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 192
    aput-object v8, v7, v3

    .line 193
    :goto_1c
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v3, v8

    move/from16 v8, v22

    move/from16 v9, v29

    move/from16 v30, v32

    move-object/from16 v29, v0

    move/from16 v22, v13

    move-object v13, v1

    move v1, v3

    const/4 v3, 0x0

    goto/16 :goto_26

    :cond_22
    move v13, v8

    add-int/lit8 v8, v22, 0x1

    .line 196
    aget-object v9, v7, v22

    check-cast v9, Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v22, v13

    const/16 v13, 0x9

    if-eq v11, v13, :cond_2a

    const/16 v13, 0x11

    if-ne v11, v13, :cond_23

    goto/16 :goto_1f

    :cond_23
    const/16 v13, 0x1b

    if-eq v11, v13, :cond_29

    const/16 v13, 0x31

    if-ne v11, v13, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v13, 0xc

    if-eq v11, v13, :cond_28

    const/16 v13, 0x1e

    if-eq v11, v13, :cond_28

    const/16 v13, 0x2c

    if-ne v11, v13, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v13, 0x32

    if-ne v11, v13, :cond_27

    add-int/lit8 v13, v23, 0x1

    .line 205
    aput v20, v15, v23

    .line 206
    div-int/lit8 v23, v20, 0x3

    const/16 v19, 0x1

    shl-int/lit8 v23, v23, 0x1

    add-int/lit8 v29, v8, 0x1

    aget-object v8, v7, v8

    aput-object v8, v14, v23

    and-int/lit16 v8, v2, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v8, v29, 0x1

    .line 208
    aget-object v29, v7, v29

    aput-object v29, v14, v23

    move-object/from16 v29, v0

    move/from16 v23, v13

    move-object v13, v1

    goto :goto_21

    :cond_26
    move/from16 v23, v13

    move/from16 v8, v29

    move-object/from16 v29, v0

    move-object v13, v1

    goto :goto_21

    :cond_27
    move-object/from16 v29, v0

    const/4 v0, 0x1

    goto :goto_20

    :cond_28
    :goto_1d
    and-int/lit8 v13, v5, 0x1

    move-object/from16 v29, v0

    const/4 v0, 0x1

    if-ne v13, v0, :cond_2b

    .line 203
    div-int/lit8 v13, v20, 0x3

    shl-int/2addr v13, v0

    add-int/2addr v13, v0

    add-int/lit8 v19, v8, 0x1

    aget-object v8, v7, v8

    aput-object v8, v14, v13

    move-object v13, v1

    move/from16 v8, v19

    goto :goto_21

    :cond_29
    :goto_1e
    move-object/from16 v29, v0

    const/4 v0, 0x1

    .line 200
    div-int/lit8 v13, v20, 0x3

    shl-int/2addr v13, v0

    add-int/2addr v13, v0

    add-int/lit8 v19, v8, 0x1

    aget-object v8, v7, v8

    aput-object v8, v14, v13

    move-object v13, v1

    move/from16 v8, v19

    goto :goto_21

    :cond_2a
    :goto_1f
    move-object/from16 v29, v0

    const/4 v0, 0x1

    .line 198
    div-int/lit8 v13, v20, 0x3

    shl-int/2addr v13, v0

    add-int/2addr v13, v0

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v14, v13

    :cond_2b
    :goto_20
    move-object v13, v1

    .line 209
    :goto_21
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v9, v0

    and-int/lit8 v0, v5, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    const/16 v0, 0x11

    if-gt v11, v0, :cond_2f

    add-int/lit8 v0, v3, 0x1

    move-object v1, v13

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v13, 0xd800

    if-lt v3, v13, :cond_2d

    and-int/lit16 v3, v3, 0x1fff

    const/16 v18, 0xd

    :goto_22
    add-int/lit8 v30, v0, 0x1

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v13, :cond_2c

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v18

    or-int/2addr v3, v0

    add-int/lit8 v18, v18, 0xd

    move/from16 v0, v30

    goto :goto_22

    :cond_2c
    shl-int v0, v0, v18

    or-int/2addr v3, v0

    const/4 v0, 0x1

    goto :goto_23

    :cond_2d
    move/from16 v30, v0

    const/4 v0, 0x1

    :goto_23
    shl-int/lit8 v18, v16, 0x1

    .line 220
    div-int/lit8 v19, v3, 0x20

    add-int v18, v18, v19

    .line 221
    aget-object v0, v7, v18

    .line 222
    instance-of v13, v0, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_2e

    .line 223
    check-cast v0, Ljava/lang/reflect/Field;

    move-object v13, v1

    goto :goto_24

    .line 224
    :cond_2e
    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 225
    aput-object v0, v7, v18

    move-object v13, v1

    .line 226
    :goto_24
    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 227
    rem-int/lit8 v3, v3, 0x20

    goto :goto_25

    :cond_2f
    move/from16 v30, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_25
    const/16 v0, 0x12

    if-lt v11, v0, :cond_30

    const/16 v0, 0x31

    if-gt v11, v0, :cond_30

    add-int/lit8 v0, v24, 0x1

    .line 232
    aput v9, v15, v24

    move/from16 v24, v0

    :cond_30
    :goto_26
    add-int/lit8 v0, v20, 0x1

    .line 233
    aput v12, v10, v20

    add-int/lit8 v12, v0, 0x1

    move-object/from16 v18, v4

    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_31

    const/high16 v4, 0x20000000

    goto :goto_27

    :cond_31
    const/4 v4, 0x0

    :goto_27
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_28

    :cond_32
    const/4 v2, 0x0

    :goto_28
    or-int/2addr v2, v4

    shl-int/lit8 v4, v11, 0x14

    or-int/2addr v2, v4

    or-int/2addr v2, v9

    .line 236
    aput v2, v10, v0

    add-int/lit8 v20, v12, 0x1

    shl-int/lit8 v0, v3, 0x14

    or-int/2addr v0, v1

    .line 237
    aput v0, v10, v12

    move-object v1, v13

    move-object/from16 v4, v18

    move/from16 v11, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v13, v28

    move-object/from16 v0, v29

    move/from16 v12, v30

    move/from16 v9, v31

    move/from16 v34, v22

    move/from16 v22, v8

    move/from16 v8, v34

    goto/16 :goto_13

    :cond_33
    move-object/from16 v29, v0

    move/from16 v27, v3

    move/from16 v22, v8

    move/from16 v25, v11

    move/from16 v28, v13

    .line 239
    new-instance v0, Lcom/google/android/libraries/places/internal/md;

    move-object/from16 v1, v29

    .line 241
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/mo;->a:Lcom/google/android/libraries/places/internal/ma;

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v10

    move-object v7, v14

    move/from16 v9, v28

    move-object v10, v1

    move-object v13, v15

    move/from16 v14, v27

    move/from16 v15, v21

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 242
    invoke-direct/range {v5 .. v20}, Lcom/google/android/libraries/places/internal/md;-><init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/ma;ZZ[IIILcom/google/android/libraries/places/internal/mg;Lcom/google/android/libraries/places/internal/lm;Lcom/google/android/libraries/places/internal/nf;Lcom/google/android/libraries/places/internal/kn;Lcom/google/android/libraries/places/internal/lw;)V

    return-object v0

    .line 244
    :cond_34
    check-cast v0, Lcom/google/android/libraries/places/internal/nc;

    .line 246
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final a(I)Lcom/google/android/libraries/places/internal/mp;
    .locals 3

    .line 2582
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 2583
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/mp;

    if-eqz v0, :cond_0

    return-object v0

    .line 2586
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 2587
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    .line 2588
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 249
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 250
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 251
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1224
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2681
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2682
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/String;)V

    return-void

    .line 2683
    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/nf<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/libraries/places/internal/nt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2580
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/nf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nf;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    return-void
.end method

.method private final a(Lcom/google/android/libraries/places/internal/nt;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/nt;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    .line 2576
    invoke-direct {p0, p4}, Lcom/google/android/libraries/places/internal/md;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/libraries/places/internal/lw;->c(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/lu;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    .line 2577
    invoke-virtual {v0, p3}, Lcom/google/android/libraries/places/internal/lw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2578
    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/lu;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 548
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 552
    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 555
    invoke-static {p2, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 557
    invoke-static {v2, p2}, Lcom/google/android/libraries/places/internal/kx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 558
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 559
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 561
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 562
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 2696
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 2697
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2727
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2726
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 2725
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 2724
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 2723
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 2722
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 2721
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 2720
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 2719
    :pswitch_7
    sget-object p2, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/kc;

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/kc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 2718
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 2712
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2713
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 2714
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 2715
    :cond_a
    instance-of p2, p1, Lcom/google/android/libraries/places/internal/kc;

    if-eqz p2, :cond_c

    .line 2716
    sget-object p2, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/kc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 2717
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2711
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 2710
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 2709
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 2708
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 2707
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 2706
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 2705
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 2704
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 2728
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/md;->d(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 2730
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 2740
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/md;->d(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2741
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 2693
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    if-eqz v0, :cond_0

    .line 2694
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/mp;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 2679
    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2680
    invoke-interface {p2, p0}, Lcom/google/android/libraries/places/internal/mp;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 2687
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 2731
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2733
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/md;->d(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 2737
    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 2738
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 2742
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/md;->d(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2743
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/nt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2250
    iget-boolean v3, v0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v3, :cond_0

    .line 2251
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object v3

    .line 2253
    iget-object v5, v3, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/ms;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2255
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/kp;->b()Ljava/util/Iterator;

    move-result-object v3

    .line 2256
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 2259
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v7, v7

    .line 2260
    sget-object v8, Lcom/google/android/libraries/places/internal/md;->b:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v7, :cond_18

    .line 2262
    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v12

    .line 2264
    iget-object v13, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v14, v13, v5

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 2270
    iget-boolean v4, v0, Lcom/google/android/libraries/places/internal/md;->j:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v5, 0x2

    .line 2271
    aget v4, v13, v4

    and-int v13, v4, v16

    if-eq v13, v6, :cond_1

    move-object/from16 v17, v10

    int-to-long v9, v13

    .line 2275
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    goto :goto_2

    :cond_1
    move-object/from16 v17, v10

    move v13, v6

    :goto_2
    ushr-int/lit8 v4, v4, 0x14

    const/4 v6, 0x1

    shl-int v9, v6, v4

    move v6, v13

    move-object/from16 v10, v17

    goto :goto_3

    :cond_2
    move-object/from16 v17, v10

    move-object/from16 v10, v17

    const/4 v9, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 2277
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v4, v10}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v14, :cond_4

    .line 2278
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/nt;Ljava/util/Map$Entry;)V

    .line 2279
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    and-int v4, v12, v16

    int-to-long v12, v4

    packed-switch v15, :pswitch_data_0

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2564
    :pswitch_0
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2566
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v9

    .line 2567
    invoke-virtual {v2, v14, v4, v9}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2562
    :pswitch_1
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2563
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->e(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2560
    :pswitch_2
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2561
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->f(II)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2558
    :pswitch_3
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2559
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->b(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2556
    :pswitch_4
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2557
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(II)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2554
    :pswitch_5
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2555
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->b(II)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2552
    :pswitch_6
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2553
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->e(II)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2550
    :pswitch_7
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2551
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2546
    :pswitch_8
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2547
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2548
    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v9

    invoke-virtual {v2, v14, v4, v9}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2544
    :pswitch_9
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2545
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/libraries/places/internal/md;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2542
    :pswitch_a
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2543
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(IZ)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2540
    :pswitch_b
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2541
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2538
    :pswitch_c
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2539
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2536
    :pswitch_d
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2537
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->c(II)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2534
    :pswitch_e
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2535
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->c(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2532
    :pswitch_f
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2533
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2530
    :pswitch_10
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2531
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(IF)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2528
    :pswitch_11
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2529
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->a(ID)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2526
    :pswitch_12
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v5}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nt;ILjava/lang/Object;I)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2520
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2522
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2523
    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v12

    .line 2524
    invoke-static {v4, v9, v2, v12}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Lcom/google/android/libraries/places/internal/mp;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2514
    :pswitch_14
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2515
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x1

    .line 2516
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_15
    const/4 v14, 0x1

    .line 2508
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2509
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2510
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_16
    const/4 v14, 0x1

    .line 2502
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2503
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2504
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_17
    const/4 v14, 0x1

    .line 2496
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2497
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2498
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_18
    const/4 v14, 0x1

    .line 2490
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2491
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2492
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_19
    const/4 v14, 0x1

    .line 2484
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2485
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2486
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_1a
    const/4 v14, 0x1

    .line 2478
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2479
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2480
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_1b
    const/4 v14, 0x1

    .line 2472
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2473
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2474
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_1c
    const/4 v14, 0x1

    .line 2466
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2467
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2468
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_1d
    const/4 v14, 0x1

    .line 2460
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2461
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2462
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_1e
    const/4 v14, 0x1

    .line 2454
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2455
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2456
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_1f
    const/4 v14, 0x1

    .line 2448
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2449
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2450
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_20
    const/4 v14, 0x1

    .line 2442
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2443
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2444
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_21
    const/4 v14, 0x1

    .line 2436
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2437
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2438
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2430
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2431
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x0

    .line 2432
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_23
    const/4 v14, 0x0

    .line 2424
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2425
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2426
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_24
    const/4 v14, 0x0

    .line 2418
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2419
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2420
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_25
    const/4 v14, 0x0

    .line 2412
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2413
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2414
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_26
    const/4 v14, 0x0

    .line 2406
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2407
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2408
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_27
    const/4 v14, 0x0

    .line 2400
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2401
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2402
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2394
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2395
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2396
    invoke-static {v4, v9, v2}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2386
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2388
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2389
    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v12

    .line 2390
    invoke-static {v4, v9, v2, v12}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Lcom/google/android/libraries/places/internal/mp;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2380
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2381
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2382
    invoke-static {v4, v9, v2}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;)V

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2374
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2375
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 2376
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v15, 0x0

    .line 2368
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2369
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2370
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v15, 0x0

    .line 2362
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2363
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2364
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v15, 0x0

    .line 2356
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2357
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2358
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v15, 0x0

    .line 2350
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2351
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2352
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v15, 0x0

    .line 2344
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2345
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2346
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v15, 0x0

    .line 2338
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2339
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2340
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v15, 0x0

    .line 2332
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v5

    .line 2333
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2334
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2328
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v9

    .line 2329
    invoke-virtual {v2, v14, v4, v9}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2325
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->e(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2323
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2321
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->b(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2319
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2317
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->b(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2315
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->e(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2313
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2309
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2310
    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v9

    invoke-virtual {v2, v14, v4, v9}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2307
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/libraries/places/internal/md;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2304
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 2305
    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2301
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2299
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2297
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->c(II)V

    goto :goto_4

    :pswitch_41
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2295
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->c(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2293
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2290
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 2291
    invoke-virtual {v2, v14, v4}, Lcom/google/android/libraries/places/internal/nt;->a(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_17

    .line 2286
    invoke-static {v1, v12, v13}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v12

    .line 2287
    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/libraries/places/internal/nt;->a(ID)V

    :cond_17
    :goto_4
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_18
    move-object/from16 v17, v10

    move-object/from16 v4, v17

    :goto_5
    if-eqz v4, :cond_1a

    .line 2570
    iget-object v5, v0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/nt;Ljava/util/Map$Entry;)V

    .line 2571
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_19
    const/4 v4, 0x0

    goto :goto_5

    .line 2572
    :cond_1a
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-static {v3, v1, v2}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 564
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 571
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 573
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 574
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 576
    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/kx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 577
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 578
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 580
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 581
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 2688
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)I
    .locals 1

    .line 2685
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 2692
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .locals 1

    .line 2686
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 2689
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 2690
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 2691
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 357
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v3

    .line 359
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 455
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 457
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 453
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 454
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 451
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 452
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 449
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 447
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 448
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 445
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 443
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 441
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 437
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 434
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 432
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 433
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kx;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 430
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 431
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 428
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 426
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 427
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 424
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 425
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 422
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 423
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 420
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 421
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 417
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 419
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 415
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 413
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 408
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 405
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 403
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 401
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 399
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 397
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 395
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 393
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 388
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 390
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_1

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 385
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 383
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kx;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 381
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 379
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 377
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 375
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 373
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 371
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 369
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kx;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 459
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/nf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 460
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    .line 461
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kp;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/nt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1225
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/nt;->a()Lcom/google/android/libraries/places/internal/nu;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/nu;->b:Lcom/google/android/libraries/places/internal/nu;

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_8

    .line 1227
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    .line 1230
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object v0

    .line 1233
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ms;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1236
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/kp;->c:Z

    if-eqz v1, :cond_0

    .line 1237
    new-instance v1, Lcom/google/android/libraries/places/internal/li;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ms;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/li;-><init>(Ljava/util/Iterator;)V

    move-object v0, v1

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ms;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1240
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_1
    move-object v0, v3

    move-object v1, v0

    .line 1241
    :goto_1
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_2
    if-ltz v7, :cond_5

    .line 1242
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v8

    .line 1244
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    :goto_3
    if-eqz v1, :cond_3

    .line 1246
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v10, v1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_3

    .line 1247
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/nt;Ljava/util/Map$Entry;)V

    .line 1248
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_2
    move-object v1, v3

    goto :goto_3

    :cond_3
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    .line 1725
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1729
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1730
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v10

    .line 1731
    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    .line 1721
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1724
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->e(IJ)V

    goto/16 :goto_4

    .line 1717
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1720
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->f(II)V

    goto/16 :goto_4

    .line 1713
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1716
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->b(IJ)V

    goto/16 :goto_4

    .line 1709
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1712
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(II)V

    goto/16 :goto_4

    .line 1705
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1708
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->b(II)V

    goto/16 :goto_4

    .line 1701
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1704
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->e(II)V

    goto/16 :goto_4

    .line 1695
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1699
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/places/internal/kc;

    .line 1700
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    goto/16 :goto_4

    .line 1689
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1692
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1693
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v10

    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    .line 1685
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1688
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/md;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_4

    .line 1681
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1684
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(IZ)V

    goto/16 :goto_4

    .line 1677
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1680
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    goto/16 :goto_4

    .line 1673
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1676
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    goto/16 :goto_4

    .line 1669
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1672
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->c(II)V

    goto/16 :goto_4

    .line 1665
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1668
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->c(IJ)V

    goto/16 :goto_4

    .line 1661
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1664
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    goto/16 :goto_4

    .line 1657
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1660
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(IF)V

    goto/16 :goto_4

    .line 1653
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1656
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->a(ID)V

    goto/16 :goto_4

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1651
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nt;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 1641
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1645
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1646
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v10

    .line 1647
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    .line 1632
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1636
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1637
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1623
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1627
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1628
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1614
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1618
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1619
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1605
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1610
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1596
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1600
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1601
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1587
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1591
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1592
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1578
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1582
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1583
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1569
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1573
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1574
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1560
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1564
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1565
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1551
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1555
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1556
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1542
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1546
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1547
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1533
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1537
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1538
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1524
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1528
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1529
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1515
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1519
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1520
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1506
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1510
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1511
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1497
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1501
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1502
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1488
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1492
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1493
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1479
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1483
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1484
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1470
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1474
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1475
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1461
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1465
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1466
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1452
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1456
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1457
    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_4

    .line 1442
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1446
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1447
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v10

    .line 1448
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    .line 1433
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1437
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1438
    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_4

    .line 1424
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1428
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1429
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1415
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1419
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1420
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1406
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1410
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1411
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1397
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1401
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1402
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1388
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1392
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1393
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1379
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1383
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1384
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1370
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1374
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1375
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1361
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1365
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1366
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_4

    .line 1352
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1356
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1357
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v10

    .line 1358
    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    .line 1346
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1350
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1351
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->e(IJ)V

    goto/16 :goto_4

    .line 1340
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1344
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1345
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->f(II)V

    goto/16 :goto_4

    .line 1334
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1338
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1339
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->b(IJ)V

    goto/16 :goto_4

    .line 1328
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1332
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1333
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(II)V

    goto/16 :goto_4

    .line 1322
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1326
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1327
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->b(II)V

    goto/16 :goto_4

    .line 1316
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1320
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1321
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->e(II)V

    goto/16 :goto_4

    .line 1310
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1314
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/places/internal/kc;

    .line 1315
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    goto/16 :goto_4

    .line 1304
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1307
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1308
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v10

    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_4

    .line 1300
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1303
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/md;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_4

    .line 1294
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1298
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 1299
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(IZ)V

    goto/16 :goto_4

    .line 1288
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1292
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1293
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    goto :goto_4

    .line 1282
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1286
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1287
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    goto :goto_4

    .line 1276
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1280
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1281
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->c(II)V

    goto :goto_4

    .line 1270
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1274
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1275
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->c(IJ)V

    goto :goto_4

    .line 1264
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1268
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1269
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    goto :goto_4

    .line 1258
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1262
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 1263
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/nt;->a(IF)V

    goto :goto_4

    .line 1252
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1256
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1257
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/nt;->a(ID)V

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_2

    :cond_5
    :goto_5
    if-eqz v1, :cond_7

    .line 1734
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/nt;Ljava/util/Map$Entry;)V

    .line 1735
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_5

    :cond_6
    move-object v1, v3

    goto :goto_5

    :cond_7
    return-void

    .line 1737
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    if-eqz v0, :cond_10

    .line 1741
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v0, :cond_9

    .line 1742
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object v0

    .line 1744
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ms;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1746
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kp;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 1747
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_9
    move-object v0, v3

    move-object v1, v0

    .line 1748
    :goto_6
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v7, :cond_d

    .line 1750
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v9

    .line 1752
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    :goto_8
    if-eqz v8, :cond_b

    .line 1754
    iget-object v11, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v11, v8}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_b

    .line 1755
    iget-object v11, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/nt;Ljava/util/Map$Entry;)V

    .line 1756
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_8

    :cond_a
    move-object v8, v3

    goto :goto_8

    :cond_b
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_9

    .line 2233
    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2237
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2238
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v11

    .line 2239
    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_9

    .line 2229
    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2232
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->e(IJ)V

    goto/16 :goto_9

    .line 2225
    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2228
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->f(II)V

    goto/16 :goto_9

    .line 2221
    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2224
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->b(IJ)V

    goto/16 :goto_9

    .line 2217
    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2220
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(II)V

    goto/16 :goto_9

    .line 2213
    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2216
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->b(II)V

    goto/16 :goto_9

    .line 2209
    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2212
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->e(II)V

    goto/16 :goto_9

    .line 2203
    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2207
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/places/internal/kc;

    .line 2208
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    goto/16 :goto_9

    .line 2197
    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2200
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2201
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_9

    .line 2193
    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2196
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/md;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_9

    .line 2189
    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2192
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->f(Ljava/lang/Object;J)Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(IZ)V

    goto/16 :goto_9

    .line 2185
    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2188
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    goto/16 :goto_9

    .line 2181
    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2184
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    goto/16 :goto_9

    .line 2177
    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2180
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->c(II)V

    goto/16 :goto_9

    .line 2173
    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2176
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->c(IJ)V

    goto/16 :goto_9

    .line 2169
    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2172
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    goto/16 :goto_9

    .line 2165
    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2168
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;J)F

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(IF)V

    goto/16 :goto_9

    .line 2161
    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2164
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->a(ID)V

    goto/16 :goto_9

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2159
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nt;ILjava/lang/Object;I)V

    goto/16 :goto_9

    .line 2149
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2153
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2154
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v11

    .line 2155
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_9

    .line 2140
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2144
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2145
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2131
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2135
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2136
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2122
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2126
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2127
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2113
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2117
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2118
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2104
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2108
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2109
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2095
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2099
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2100
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2086
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2090
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2091
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2077
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2081
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2082
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2068
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2072
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2073
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2059
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2063
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2064
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2050
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2054
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2055
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2041
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2045
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2046
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2032
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2036
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2037
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2023
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2027
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2028
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2014
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2018
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2019
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 2005
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2009
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2010
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1996
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2000
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2001
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1987
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1991
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1992
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1978
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1982
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1983
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1969
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1973
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1974
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1960
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1964
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1965
    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_9

    .line 1950
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1954
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1955
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v11

    .line 1956
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_9

    .line 1941
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1945
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1946
    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_9

    .line 1932
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1936
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1937
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1923
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1927
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1928
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1914
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1918
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1919
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1905
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1909
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1910
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1896
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1900
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1901
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1887
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1891
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1892
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1878
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1882
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1883
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1869
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1873
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1874
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/nt;Z)V

    goto/16 :goto_9

    .line 1860
    :pswitch_78
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1864
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1865
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v11

    .line 1866
    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_9

    .line 1854
    :pswitch_79
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1858
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1859
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->e(IJ)V

    goto/16 :goto_9

    .line 1848
    :pswitch_7a
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1852
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1853
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->f(II)V

    goto/16 :goto_9

    .line 1842
    :pswitch_7b
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1846
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1847
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->b(IJ)V

    goto/16 :goto_9

    .line 1836
    :pswitch_7c
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1840
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1841
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(II)V

    goto/16 :goto_9

    .line 1830
    :pswitch_7d
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1834
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1835
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->b(II)V

    goto/16 :goto_9

    .line 1824
    :pswitch_7e
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1828
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1829
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->e(II)V

    goto/16 :goto_9

    .line 1818
    :pswitch_7f
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1822
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/places/internal/kc;

    .line 1823
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    goto/16 :goto_9

    .line 1812
    :pswitch_80
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1815
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1816
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    goto/16 :goto_9

    .line 1808
    :pswitch_81
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1811
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/md;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    goto/16 :goto_9

    .line 1802
    :pswitch_82
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1806
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v9

    .line 1807
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(IZ)V

    goto/16 :goto_9

    .line 1796
    :pswitch_83
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1800
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1801
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    goto :goto_9

    .line 1790
    :pswitch_84
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1794
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1795
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    goto :goto_9

    .line 1784
    :pswitch_85
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1788
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1789
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->c(II)V

    goto :goto_9

    .line 1778
    :pswitch_86
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1782
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1783
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->c(IJ)V

    goto :goto_9

    .line 1772
    :pswitch_87
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1776
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1777
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    goto :goto_9

    .line 1766
    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1770
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v9

    .line 1771
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/nt;->a(IF)V

    goto :goto_9

    .line 1760
    :pswitch_89
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1764
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1765
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/nt;->a(ID)V

    :cond_c
    :goto_9
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_7

    :cond_d
    :goto_a
    if-eqz v8, :cond_f

    .line 2242
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/libraries/places/internal/kn;->a(Lcom/google/android/libraries/places/internal/nt;Ljava/util/Map$Entry;)V

    .line 2243
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_a

    :cond_e
    move-object v8, v3

    goto :goto_a

    .line 2244
    :cond_f
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    return-void

    .line 2246
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_14

    .line 260
    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 334
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/md;->d(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 335
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 336
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 338
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 339
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 331
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 332
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 328
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 329
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 323
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 325
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 320
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 317
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 314
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 315
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 311
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 308
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 309
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_6

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 305
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 306
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_7

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 301
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 303
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 297
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 299
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 293
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 290
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 287
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 288
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_c

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 284
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 285
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_d

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 281
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 282
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_e

    goto :goto_1

    :cond_e
    const/4 v3, 0x0

    goto :goto_1

    .line 278
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 279
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_f

    goto :goto_1

    :cond_f
    const/4 v3, 0x0

    goto :goto_1

    .line 275
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 276
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_10

    goto :goto_1

    :cond_10
    const/4 v3, 0x0

    goto :goto_1

    .line 271
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 273
    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_11

    goto :goto_1

    :cond_11
    const/4 v3, 0x0

    goto :goto_1

    .line 267
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/md;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 269
    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_12

    goto :goto_1

    :cond_12
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 345
    :cond_14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/nf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/nf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 349
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v0, :cond_16

    .line 350
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object p1

    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object p2

    .line 352
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/kp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_16
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 583
    iget-boolean v2, v0, Lcom/google/android/libraries/places/internal/md;->j:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 584
    sget-object v2, Lcom/google/android/libraries/places/internal/md;->b:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 586
    :goto_0
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 587
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 592
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 597
    sget-object v14, Lcom/google/android/libraries/places/internal/kr;->d:Lcom/google/android/libraries/places/internal/kr;

    .line 599
    iget v14, v14, Lcom/google/android/libraries/places/internal/kr;->h:I

    if-lt v15, v14, :cond_0

    .line 600
    sget-object v14, Lcom/google/android/libraries/places/internal/kr;->e:Lcom/google/android/libraries/places/internal/kr;

    .line 602
    iget v14, v14, Lcom/google/android/libraries/places/internal/kr;->h:I

    if-gt v15, v14, :cond_0

    .line 604
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_2

    .line 868
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 870
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/ma;

    .line 871
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v6

    .line 872
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 866
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 867
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->f(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 864
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 865
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->h(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 862
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 863
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/kk;->h(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 860
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 861
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/kk;->j(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 858
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 859
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->k(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 856
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 857
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 852
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 854
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/kc;

    .line 855
    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 848
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 849
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 850
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 842
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 843
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 844
    instance-of v6, v5, Lcom/google/android/libraries/places/internal/kc;

    if-eqz v6, :cond_1

    .line 845
    check-cast v5, Lcom/google/android/libraries/places/internal/kc;

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 846
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->b(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 840
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 841
    invoke-static {v3, v8}, Lcom/google/android/libraries/places/internal/kk;->b(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 838
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 839
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/kk;->i(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 836
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 837
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/kk;->g(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 834
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 835
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->f(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 832
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 833
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->e(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 830
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 831
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->d(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 828
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 829
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kk;->b(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 826
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 827
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->b(ID)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 822
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    .line 823
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 824
    invoke-virtual {v14, v3, v5, v6}, Lcom/google/android/libraries/places/internal/lw;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 819
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v6

    .line 820
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 810
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 811
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->c(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 813
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 814
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 816
    :cond_2
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 817
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 801
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 802
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 804
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 805
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 807
    :cond_3
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 808
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 792
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 793
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 795
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 796
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 798
    :cond_4
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 799
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 783
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 784
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 786
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 787
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 789
    :cond_5
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 790
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 774
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 775
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 777
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 778
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 780
    :cond_6
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 781
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 765
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 766
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 768
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 769
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 771
    :cond_7
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 772
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 756
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 757
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 759
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 760
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 762
    :cond_8
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 763
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 747
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 748
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 750
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 751
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 753
    :cond_9
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 754
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 738
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 739
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 741
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 742
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 744
    :cond_a
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 745
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 729
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 730
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 732
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 733
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 735
    :cond_b
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 736
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 720
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 721
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->b(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 723
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 724
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 726
    :cond_c
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 727
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 711
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 712
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 714
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 715
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 717
    :cond_d
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 718
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 702
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 703
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 705
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 706
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 708
    :cond_e
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 709
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 693
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 694
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/mr;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 696
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 697
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 699
    :cond_f
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v3

    .line 700
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 690
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 688
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 686
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 684
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 682
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 680
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 678
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 675
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v6

    .line 676
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 672
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 670
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 668
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 666
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 664
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 662
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 660
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 658
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 656
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 651
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 653
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/ma;

    .line 654
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v6

    .line 655
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 648
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 650
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->f(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 646
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 647
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->h(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 644
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 645
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/kk;->h(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 642
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 643
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/kk;->j(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 640
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 641
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->k(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 638
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 639
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 634
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 635
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/kc;

    .line 636
    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 630
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 631
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 632
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 624
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 625
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 626
    instance-of v6, v5, Lcom/google/android/libraries/places/internal/kc;

    if-eqz v6, :cond_10

    .line 627
    check-cast v5, Lcom/google/android/libraries/places/internal/kc;

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 628
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->b(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 622
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 623
    invoke-static {v3, v8}, Lcom/google/android/libraries/places/internal/kk;->b(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 620
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 621
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/kk;->i(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 618
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 619
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/kk;->g(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 616
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 617
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/kk;->f(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 613
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 615
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->e(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 611
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 612
    invoke-static {v1, v5, v6}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->d(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 609
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 610
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kk;->b(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 607
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 608
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/kk;->b(ID)I

    move-result v3

    add-int/2addr v13, v3

    :cond_11
    :goto_2
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 874
    :cond_12
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 878
    :cond_13
    sget-object v2, Lcom/google/android/libraries/places/internal/md;->b:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 881
    :goto_3
    iget-object v13, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v13, v13

    if-ge v3, v13, :cond_59

    .line 882
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v13

    .line 884
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v3, 0x2

    .line 892
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v6, :cond_14

    int-to-long v8, v14

    .line 897
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_4

    :cond_14
    move v14, v6

    :goto_4
    move v6, v14

    goto :goto_5

    .line 898
    :cond_15
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_16

    sget-object v8, Lcom/google/android/libraries/places/internal/kr;->d:Lcom/google/android/libraries/places/internal/kr;

    .line 900
    iget v8, v8, Lcom/google/android/libraries/places/internal/kr;->h:I

    if-lt v4, v8, :cond_16

    .line 901
    sget-object v8, Lcom/google/android/libraries/places/internal/kr;->e:Lcom/google/android/libraries/places/internal/kr;

    .line 903
    iget v8, v8, Lcom/google/android/libraries/places/internal/kr;->h:I

    if-gt v4, v8, :cond_16

    .line 905
    iget-object v8, v0, Lcom/google/android/libraries/places/internal/md;->c:[I

    add-int/lit8 v9, v3, 0x2

    aget v8, v8, v9

    and-int v11, v8, v7

    const/16 v18, 0x0

    goto :goto_5

    :cond_16
    const/4 v11, 0x0

    const/16 v18, 0x0

    :goto_5
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1201
    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1203
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/ma;

    .line 1204
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v8

    .line 1205
    invoke-static {v15, v4, v8}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_17
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1199
    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1200
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->f(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_18
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1197
    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1198
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->h(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_19
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1195
    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-wide/16 v8, 0x0

    .line 1196
    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->h(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_1a
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1193
    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    .line 1194
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->j(II)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_1b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1191
    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1192
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->k(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_1c
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1189
    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1190
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_1d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1185
    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1187
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/kc;

    .line 1188
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_1e
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1181
    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1182
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1183
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_1f
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1175
    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1176
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1177
    instance-of v8, v4, Lcom/google/android/libraries/places/internal/kc;

    if-eqz v8, :cond_20

    .line 1178
    check-cast v4, Lcom/google/android/libraries/places/internal/kc;

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1179
    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->b(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_21
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1173
    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    .line 1174
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->b(IZ)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_22
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1171
    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    .line 1172
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->i(II)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_23
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1169
    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_24

    const-wide/16 v8, 0x0

    .line 1170
    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->g(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_24
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1167
    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1168
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->f(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_25
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1165
    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1166
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->e(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_26
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1163
    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1164
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/md;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->d(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_27
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1161
    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    .line 1162
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->b(IF)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_28
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1159
    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_29

    const-wide/16 v8, 0x0

    .line 1160
    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->b(ID)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_29
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1155
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    .line 1156
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 1157
    invoke-virtual {v4, v15, v8, v9}, Lcom/google/android/libraries/places/internal/lw;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1151
    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1152
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v8

    .line 1153
    invoke-static {v15, v4, v8}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1142
    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1143
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2b

    .line 1145
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_2a

    int-to-long v8, v11

    .line 1146
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1148
    :cond_2a
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1149
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_2b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1133
    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1134
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2d

    .line 1136
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_2c

    int-to-long v8, v11

    .line 1137
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1139
    :cond_2c
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1140
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_2d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1124
    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1125
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2f

    .line 1127
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_2e

    int-to-long v8, v11

    .line 1128
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1130
    :cond_2e
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1131
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_2f
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1115
    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1116
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_31

    .line 1118
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_30

    int-to-long v8, v11

    .line 1119
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1121
    :cond_30
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1122
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_31
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1106
    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1107
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_33

    .line 1109
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_32

    int-to-long v8, v11

    .line 1110
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1112
    :cond_32
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1113
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_33
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1097
    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1098
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_35

    .line 1100
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_34

    int-to-long v8, v11

    .line 1101
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1103
    :cond_34
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1104
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_35
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1088
    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1089
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_37

    .line 1091
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_36

    int-to-long v8, v11

    .line 1092
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1094
    :cond_36
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1095
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_37
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1079
    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1080
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_39

    .line 1082
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_38

    int-to-long v8, v11

    .line 1083
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1085
    :cond_38
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1086
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_39
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1070
    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1071
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3b

    .line 1073
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_3a

    int-to-long v8, v11

    .line 1074
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1076
    :cond_3a
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1077
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_3b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1061
    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1062
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3d

    .line 1064
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_3c

    int-to-long v8, v11

    .line 1065
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1067
    :cond_3c
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1068
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_3d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1052
    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1053
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3f

    .line 1055
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_3e

    int-to-long v8, v11

    .line 1056
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1058
    :cond_3e
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1059
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_3f
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1043
    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1044
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_41

    .line 1046
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_40

    int-to-long v8, v11

    .line 1047
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1049
    :cond_40
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1050
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_41
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1034
    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1035
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_43

    .line 1037
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_42

    int-to-long v8, v11

    .line 1038
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1040
    :cond_42
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1041
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_43
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1025
    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1026
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/mr;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_45

    .line 1028
    iget-boolean v8, v0, Lcom/google/android/libraries/places/internal/md;->k:Z

    if-eqz v8, :cond_44

    int-to-long v8, v11

    .line 1029
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1031
    :cond_44
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v8

    .line 1032
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_45
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 1021
    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 1022
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->c(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_68
    const/4 v10, 0x0

    .line 1017
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1018
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->g(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_69
    const/4 v10, 0x0

    .line 1013
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1014
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_6a
    const/4 v10, 0x0

    .line 1009
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1010
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_6b
    const/4 v10, 0x0

    .line 1005
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1006
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->d(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_6c
    const/4 v10, 0x0

    .line 1001
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1002
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->f(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 997
    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 998
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 993
    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v8

    .line 994
    invoke-static {v15, v4, v8}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 990
    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 986
    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 987
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->j(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_71
    const/4 v10, 0x0

    .line 982
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 983
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_72
    const/4 v10, 0x0

    .line 978
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 979
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_73
    const/4 v10, 0x0

    .line 974
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 975
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->e(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_74
    const/4 v10, 0x0

    .line 970
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 971
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->b(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_75
    const/4 v10, 0x0

    .line 966
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 967
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_76
    const/4 v10, 0x0

    .line 962
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 963
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->h(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_77
    const/4 v10, 0x0

    .line 958
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 959
    invoke-static {v15, v4, v10}, Lcom/google/android/libraries/places/internal/mr;->i(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_46

    .line 954
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/ma;

    .line 955
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v8

    .line 956
    invoke-static {v15, v4, v8}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_46
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_47

    .line 951
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->f(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_47
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_48

    .line 949
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->h(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_48
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_49

    const-wide/16 v8, 0x0

    .line 947
    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->h(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_49
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_4a

    const/4 v4, 0x0

    .line 945
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->j(II)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_4a
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_4b

    .line 943
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->k(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_4b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_4c

    .line 941
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_4c
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_4d

    .line 937
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/kc;

    .line 938
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_4d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_4e

    .line 933
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 934
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/libraries/places/internal/mr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_4e
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_50

    .line 927
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 928
    instance-of v8, v4, Lcom/google/android/libraries/places/internal/kc;

    if-eqz v8, :cond_4f

    .line 929
    check-cast v4, Lcom/google/android/libraries/places/internal/kc;

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    .line 930
    :cond_4f
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->b(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_50
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_51

    const/4 v4, 0x1

    .line 925
    invoke-static {v15, v4}, Lcom/google/android/libraries/places/internal/kk;->b(IZ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_51
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v18

    if-eqz v8, :cond_52

    const/4 v10, 0x0

    .line 923
    invoke-static {v15, v10}, Lcom/google/android/libraries/places/internal/kk;->i(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :cond_52
    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_6

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_53

    const-wide/16 v13, 0x0

    .line 921
    invoke-static {v15, v13, v14}, Lcom/google/android/libraries/places/internal/kk;->g(IJ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto/16 :goto_6

    :cond_53
    const-wide/16 v13, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_6

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_54

    .line 919
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/libraries/places/internal/kk;->f(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_54
    const-wide/16 v7, 0x0

    goto :goto_6

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_55

    .line 917
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->e(IJ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_55
    const-wide/16 v7, 0x0

    goto :goto_6

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_56

    .line 915
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/libraries/places/internal/kk;->d(IJ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_56
    const-wide/16 v7, 0x0

    goto :goto_6

    :pswitch_88
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_57

    const/4 v8, 0x0

    .line 913
    invoke-static {v15, v8}, Lcom/google/android/libraries/places/internal/kk;->b(IF)I

    move-result v9

    add-int/2addr v5, v9

    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_57
    const-wide/16 v7, 0x0

    goto :goto_6

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_58

    const-wide/16 v7, 0x0

    .line 911
    invoke-static {v15, v7, v8}, Lcom/google/android/libraries/places/internal/kk;->b(ID)I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_6

    :cond_58
    const-wide/16 v7, 0x0

    :goto_6
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_59
    const/4 v10, 0x0

    .line 1207
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/md;->a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1208
    iget-boolean v2, v0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v2, :cond_5c

    .line 1209
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object v1

    const/4 v2, 0x0

    .line 1211
    :goto_7
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/ms;->b()I

    move-result v3

    if-ge v10, v3, :cond_5a

    .line 1212
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v3, v10}, Lcom/google/android/libraries/places/internal/ms;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 1213
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/kq;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/libraries/places/internal/kp;->b(Lcom/google/android/libraries/places/internal/kq;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1215
    :cond_5a
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/kp;->a:Lcom/google/android/libraries/places/internal/ms;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ms;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1216
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/kq;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/libraries/places/internal/kp;->b(Lcom/google/android/libraries/places/internal/kq;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_8

    :cond_5b
    add-int/2addr v5, v2

    :cond_5c
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 467
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 472
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 541
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 538
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 540
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 536
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 533
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 535
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 531
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/libraries/places/internal/mr;->a(Lcom/google/android/libraries/places/internal/lw;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 529
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->p:Lcom/google/android/libraries/places/internal/lm;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/libraries/places/internal/lm;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 527
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 524
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JJ)V

    .line 526
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 521
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    .line 523
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 518
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JJ)V

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 515
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    .line 517
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 512
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    .line 514
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 509
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    .line 511
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 506
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 508
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 504
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 501
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 498
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JZ)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 495
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 492
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JJ)V

    .line 494
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 489
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JI)V

    .line 491
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 486
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JJ)V

    .line 488
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 483
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JJ)V

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 480
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JF)V

    .line 482
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 477
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JD)V

    .line 479
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/md;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 543
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    if-nez v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/mr;->a(Lcom/google/android/libraries/places/internal/nf;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/mr;->a(Lcom/google/android/libraries/places/internal/kn;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 464
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2591
    iget v0, p0, Lcom/google/android/libraries/places/internal/md;->m:I

    :goto_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/md;->n:I

    if-ge v0, v1, :cond_1

    .line 2592
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2595
    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2597
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/lw;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2599
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->l:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2601
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/md;->p:Lcom/google/android/libraries/places/internal/lm;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/md;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/libraries/places/internal/lm;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2603
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->q:Lcom/google/android/libraries/places/internal/nf;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/nf;->b(Ljava/lang/Object;)V

    .line 2604
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v0, :cond_3

    .line 2605
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kn;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2609
    :goto_0
    iget v4, p0, Lcom/google/android/libraries/places/internal/md;->m:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_d

    .line 2610
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/md;->l:[I

    aget v4, v4, v1

    .line 2612
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    aget v6, v6, v4

    .line 2614
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/md;->c(I)I

    move-result v7

    .line 2616
    iget-boolean v8, p0, Lcom/google/android/libraries/places/internal/md;->j:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 2617
    iget-object v8, p0, Lcom/google/android/libraries/places/internal/md;->c:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_1

    .line 2622
    sget-object v2, Lcom/google/android/libraries/places/internal/md;->b:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 2626
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_8

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_7

    const/16 v8, 0x44

    if-eq v10, v8, :cond_7

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    .line 2652
    :pswitch_0
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 2654
    invoke-static {p1, v7, v8}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/libraries/places/internal/lw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2655
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2656
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/md;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 2657
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/md;->s:Lcom/google/android/libraries/places/internal/lw;

    invoke-virtual {v7, v4}, Lcom/google/android/libraries/places/internal/lw;->c(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/lu;

    move-result-object v4

    .line 2658
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/lu;->b:Lcom/google/android/libraries/places/internal/nr;

    .line 2659
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/nr;->s:Lcom/google/android/libraries/places/internal/ns;

    .line 2660
    sget-object v7, Lcom/google/android/libraries/places/internal/ns;->i:Lcom/google/android/libraries/places/internal/ns;

    if-ne v4, v7, :cond_6

    const/4 v4, 0x0

    .line 2662
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_5

    .line 2664
    sget-object v4, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 2665
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v4

    .line 2666
    :cond_5
    invoke-interface {v4, v7}, Lcom/google/android/libraries/places/internal/mp;->d(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x0

    :cond_6
    if-nez v5, :cond_c

    return v0

    .line 2648
    :cond_7
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2649
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/mp;)Z

    move-result v4

    if-nez v4, :cond_c

    return v0

    :cond_8
    :pswitch_1
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 2637
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/nk;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2638
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2639
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v4

    const/4 v7, 0x0

    .line 2640
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 2641
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2642
    invoke-interface {v4, v8}, Lcom/google/android/libraries/places/internal/mp;->d(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-nez v5, :cond_c

    return v0

    .line 2631
    :cond_b
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2632
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/md;->a(I)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/libraries/places/internal/md;->a(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/mp;)Z

    move-result v4

    if-nez v4, :cond_c

    return v0

    :cond_c
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2673
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/md;->h:Z

    if-eqz v1, :cond_e

    .line 2674
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/md;->r:Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/kn;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kp;->c()Z

    move-result p1

    if-nez p1, :cond_e

    return v0

    :cond_e
    return v5

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
