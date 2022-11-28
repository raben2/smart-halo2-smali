.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 73

    move-object/from16 v0, p0

    .line 1239
    iget-object v1, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1240
    iget-object v2, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1241
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v3

    .line 1242
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    .line 1245
    array-length v5, v1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_2

    .line 1249
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    .line 1254
    aget-wide v7, p1, v5

    const/4 v9, 0x1

    .line 1255
    aget-wide v10, p1, v9

    const/4 v12, 0x2

    .line 1256
    aget-wide v13, p1, v12

    const/4 v15, 0x3

    .line 1257
    aget-wide v16, p1, v15

    const/4 v15, 0x4

    .line 1258
    aget-wide v18, p1, v15

    .line 1259
    aget-wide v20, p1, v6

    const/16 v22, 0x6

    .line 1260
    aget-wide v23, p1, v22

    const/16 v25, 0x7

    .line 1261
    aget-wide v26, p1, v25

    const/16 v12, 0x8

    .line 1262
    aget-wide v28, p1, v12

    const/16 v5, 0x9

    .line 1263
    aget-wide v30, p1, v5

    const/16 v12, 0xa

    .line 1264
    aget-wide v32, p1, v12

    const/16 v34, 0xb

    .line 1265
    aget-wide v35, p1, v34

    const/16 v12, 0xc

    .line 1266
    aget-wide v37, p1, v12

    const/16 v6, 0xd

    .line 1267
    aget-wide v39, p1, v6

    const/16 v41, 0xe

    .line 1268
    aget-wide v42, p1, v41

    const/16 v44, 0xf

    .line 1269
    aget-wide v44, p1, v44

    const/16 v46, 0x13

    move-wide/from16 v46, v44

    move-wide/from16 v44, v42

    move-wide/from16 v42, v39

    move-wide/from16 v39, v37

    move-wide/from16 v37, v35

    move-wide/from16 v35, v32

    move-wide/from16 v32, v30

    move-wide/from16 v30, v28

    move-wide/from16 v28, v26

    move-wide/from16 v26, v23

    move-wide/from16 v23, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v13

    move-wide v13, v10

    move-wide v10, v7

    const/16 v7, 0x13

    :goto_0
    if-lt v7, v9, :cond_0

    .line 1273
    aget v8, v3, v7

    .line 1274
    aget v48, v4, v7

    add-int/lit8 v49, v8, 0x1

    .line 1277
    aget-wide v50, v1, v49

    sub-long v10, v10, v50

    add-int/lit8 v50, v8, 0x2

    .line 1278
    aget-wide v51, v1, v50

    sub-long v13, v13, v51

    add-int/lit8 v51, v8, 0x3

    .line 1279
    aget-wide v52, v1, v51

    move-wide/from16 v54, v13

    sub-long v12, v16, v52

    add-int/lit8 v14, v8, 0x4

    .line 1280
    aget-wide v16, v1, v14

    sub-long v5, v18, v16

    add-int/lit8 v16, v8, 0x5

    .line 1281
    aget-wide v18, v1, v16

    move-wide/from16 v56, v10

    sub-long v9, v20, v18

    add-int/lit8 v11, v8, 0x6

    .line 1282
    aget-wide v18, v1, v11

    move-object/from16 v58, v3

    move-object/from16 v59, v4

    sub-long v3, v23, v18

    add-int/lit8 v17, v8, 0x7

    .line 1283
    aget-wide v18, v1, v17

    move/from16 p1, v14

    sub-long v14, v26, v18

    add-int/lit8 v18, v8, 0x8

    .line 1284
    aget-wide v19, v1, v18

    move-wide/from16 v60, v5

    sub-long v5, v28, v19

    add-int/lit8 v19, v8, 0x9

    .line 1285
    aget-wide v20, v1, v19

    move-wide/from16 v23, v5

    sub-long v5, v30, v20

    add-int/lit8 v20, v8, 0xa

    .line 1286
    aget-wide v26, v1, v20

    move-wide/from16 v62, v3

    sub-long v3, v32, v26

    add-int/lit8 v21, v8, 0xb

    .line 1287
    aget-wide v26, v1, v21

    move-wide/from16 v28, v5

    sub-long v5, v35, v26

    add-int/lit8 v26, v8, 0xc

    .line 1288
    aget-wide v30, v1, v26

    move-wide/from16 v32, v5

    sub-long v5, v37, v30

    add-int/lit8 v27, v8, 0xd

    .line 1289
    aget-wide v30, v1, v27

    move-wide/from16 v64, v3

    sub-long v3, v39, v30

    add-int/lit8 v30, v8, 0xe

    .line 1290
    aget-wide v35, v1, v30

    add-int/lit8 v31, v48, 0x1

    aget-wide v37, v2, v31

    add-long v35, v35, v37

    move-wide/from16 v37, v3

    sub-long v3, v42, v35

    add-int/lit8 v35, v8, 0xf

    .line 1291
    aget-wide v39, v1, v35

    add-int/lit8 v36, v48, 0x2

    aget-wide v42, v2, v36

    add-long v39, v39, v42

    move-wide/from16 v66, v9

    sub-long v9, v44, v39

    add-int/lit8 v36, v8, 0x10

    .line 1292
    aget-wide v39, v1, v36

    move-object/from16 v68, v1

    int-to-long v0, v7

    add-long v39, v39, v0

    const-wide/16 v42, 0x1

    add-long v39, v39, v42

    move-wide/from16 v42, v0

    sub-long v0, v46, v39

    move/from16 v69, v7

    move/from16 v70, v8

    move-wide/from16 v7, v56

    move-object/from16 v56, v2

    const/16 v2, 0x9

    .line 1295
    invoke-static {v0, v1, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v2, 0x30

    .line 1297
    invoke-static {v5, v6, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v12, v5

    const/16 v2, 0x23

    .line 1299
    invoke-static {v3, v4, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v4, 0x34

    move-wide/from16 v44, v2

    move-wide/from16 v39, v5

    move-wide/from16 v2, v64

    move-wide/from16 v5, v66

    .line 1301
    invoke-static {v2, v3, v4, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v4, v5, v2

    const/16 v6, 0x17

    move-wide/from16 v46, v2

    move-wide/from16 v2, v54

    .line 1303
    invoke-static {v2, v3, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v6, 0x1f

    move-wide/from16 v54, v9

    move-wide/from16 v9, v62

    move-wide/from16 v71, v0

    move-wide/from16 v0, v28

    move-wide/from16 v28, v71

    .line 1305
    invoke-static {v9, v10, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    const/16 v6, 0x25

    move-wide/from16 v62, v0

    move-wide/from16 v0, v60

    move-wide/from16 v71, v2

    move-wide/from16 v2, v32

    move-wide/from16 v32, v71

    .line 1307
    invoke-static {v0, v1, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v6, 0x14

    move-wide/from16 v60, v2

    move-wide/from16 v2, v23

    move-wide/from16 v23, v14

    move-wide/from16 v14, v37

    .line 1309
    invoke-static {v2, v3, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v6, 0x1f

    .line 1312
    invoke-static {v2, v3, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x2c

    .line 1314
    invoke-static {v9, v10, v6, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const/16 v6, 0x2f

    .line 1316
    invoke-static {v0, v1, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x2e

    move-wide/from16 v37, v9

    move-wide/from16 v9, v23

    move-wide/from16 v23, v0

    move-wide/from16 v0, v32

    .line 1318
    invoke-static {v0, v1, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v6, 0x13

    move-wide/from16 v32, v0

    move-wide/from16 v0, v28

    .line 1320
    invoke-static {v0, v1, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x2a

    move-wide/from16 v28, v14

    move-wide/from16 v14, v44

    move-wide/from16 v44, v2

    move-wide/from16 v2, v54

    .line 1322
    invoke-static {v14, v15, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v2, v14

    const/16 v6, 0x2c

    move-wide/from16 v54, v2

    move-wide/from16 v2, v39

    move-wide/from16 v39, v0

    move-wide/from16 v0, v62

    .line 1324
    invoke-static {v2, v3, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x19

    move-wide/from16 v62, v0

    move-wide/from16 v0, v46

    move-wide/from16 v46, v4

    move-wide/from16 v4, v60

    .line 1326
    invoke-static {v0, v1, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x10

    .line 1329
    invoke-static {v0, v1, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x22

    .line 1331
    invoke-static {v14, v15, v6, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const/16 v6, 0x38

    .line 1333
    invoke-static {v2, v3, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v6, 0x33

    move-wide/from16 v60, v14

    move-wide/from16 v14, v46

    move-wide/from16 v71, v2

    move-wide/from16 v2, v39

    move-wide/from16 v39, v71

    .line 1335
    invoke-static {v2, v3, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    move-wide/from16 v46, v2

    move-wide/from16 v2, v44

    const/4 v6, 0x4

    .line 1337
    invoke-static {v2, v3, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v6, 0x35

    move-wide/from16 v44, v4

    move-wide/from16 v4, v23

    move-wide/from16 v23, v0

    move-wide/from16 v0, v28

    .line 1339
    invoke-static {v4, v5, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x2a

    move-wide/from16 v28, v0

    move-wide/from16 v0, v37

    move-wide/from16 v37, v2

    move-wide/from16 v2, v54

    .line 1341
    invoke-static {v0, v1, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v6, 0x29

    move-wide/from16 v54, v2

    move-wide/from16 v2, v32

    move-wide/from16 v32, v9

    move-wide/from16 v9, v62

    .line 1343
    invoke-static {v2, v3, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    .line 1346
    invoke-static {v2, v3, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x9

    .line 1348
    invoke-static {v4, v5, v6, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0x25

    .line 1350
    invoke-static {v0, v1, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x1f

    move-wide/from16 v62, v0

    move-wide/from16 v0, v32

    move-wide/from16 v32, v14

    move-wide/from16 v14, v37

    .line 1352
    invoke-static {v14, v15, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v0, v14

    move-wide/from16 v37, v14

    move-wide/from16 v14, v23

    const/16 v6, 0xc

    .line 1354
    invoke-static {v14, v15, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v9, v14

    const/16 v6, 0x2f

    move-wide/from16 v23, v14

    move-wide/from16 v14, v39

    move-wide/from16 v39, v9

    move-wide/from16 v9, v44

    .line 1356
    invoke-static {v14, v15, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v9, v14

    const/16 v6, 0x2c

    move-wide/from16 v44, v14

    move-wide/from16 v14, v60

    move-wide/from16 v71, v9

    move-wide/from16 v9, v28

    move-wide/from16 v28, v71

    .line 1358
    invoke-static {v14, v15, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v9, v14

    const/16 v6, 0x1e

    move-wide/from16 v60, v14

    move-wide/from16 v14, v46

    move-wide/from16 v46, v9

    move-wide/from16 v9, v54

    .line 1360
    invoke-static {v14, v15, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v9, v14

    .line 1364
    aget-wide v54, v68, v70

    sub-long v7, v7, v54

    .line 1365
    aget-wide v54, v68, v49

    sub-long v2, v2, v54

    .line 1366
    aget-wide v49, v68, v50

    sub-long v12, v12, v49

    .line 1367
    aget-wide v49, v68, v51

    sub-long v4, v4, v49

    .line 1368
    aget-wide v49, v68, p1

    move-wide/from16 v54, v4

    sub-long v4, v32, v49

    .line 1369
    aget-wide v32, v68, v16

    move-wide/from16 v49, v2

    sub-long v2, v62, v32

    .line 1370
    aget-wide v32, v68, v11

    sub-long v0, v0, v32

    .line 1371
    aget-wide v16, v68, v17

    move-wide/from16 v32, v2

    sub-long v2, v37, v16

    .line 1372
    aget-wide v16, v68, v18

    move-wide/from16 v37, v2

    sub-long v2, v39, v16

    .line 1373
    aget-wide v16, v68, v19

    move-wide/from16 v18, v2

    sub-long v2, v23, v16

    .line 1374
    aget-wide v16, v68, v20

    move-wide/from16 v23, v2

    sub-long v2, v28, v16

    .line 1375
    aget-wide v16, v68, v21

    move-wide/from16 v20, v2

    sub-long v2, v44, v16

    .line 1376
    aget-wide v16, v68, v26

    move-wide/from16 v28, v4

    sub-long v4, v46, v16

    .line 1377
    aget-wide v16, v68, v27

    aget-wide v26, v56, v48

    add-long v16, v16, v26

    move-wide/from16 v26, v4

    sub-long v4, v60, v16

    .line 1378
    aget-wide v16, v68, v30

    aget-wide v30, v56, v31

    add-long v16, v16, v30

    sub-long v9, v9, v16

    .line 1379
    aget-wide v16, v68, v35

    add-long v16, v16, v42

    sub-long v14, v14, v16

    const/4 v6, 0x5

    .line 1382
    invoke-static {v14, v15, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v7, v14

    const/16 v6, 0x14

    .line 1384
    invoke-static {v2, v3, v6, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v6, 0x30

    .line 1386
    invoke-static {v4, v5, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x29

    move-wide/from16 v16, v2

    move-wide/from16 v2, v28

    move-wide/from16 v71, v4

    move-wide/from16 v4, v23

    move-wide/from16 v23, v71

    .line 1388
    invoke-static {v4, v5, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x2f

    move-wide/from16 v28, v4

    move-wide/from16 v4, v49

    .line 1390
    invoke-static {v4, v5, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x1c

    move-wide/from16 v30, v9

    move-wide/from16 v9, v32

    move-wide/from16 v71, v14

    move-wide/from16 v14, v18

    move-wide/from16 v18, v71

    .line 1392
    invoke-static {v9, v10, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v6, 0x10

    move-wide/from16 v32, v14

    move-wide/from16 v14, v54

    move-wide/from16 v71, v0

    move-wide/from16 v0, v20

    move-wide/from16 v20, v71

    .line 1394
    invoke-static {v14, v15, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v0, v14

    const/16 v6, 0x19

    move-wide/from16 v35, v0

    move-wide/from16 v0, v37

    move-wide/from16 v71, v4

    move-wide/from16 v4, v26

    move-wide/from16 v26, v71

    .line 1396
    invoke-static {v0, v1, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x21

    .line 1399
    invoke-static {v0, v1, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/4 v6, 0x4

    .line 1401
    invoke-static {v9, v10, v6, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const/16 v6, 0x33

    .line 1403
    invoke-static {v14, v15, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v2, v14

    move-wide/from16 v37, v9

    move-wide/from16 v9, v20

    const/16 v6, 0xd

    move-wide/from16 v20, v14

    move-wide/from16 v14, v26

    .line 1405
    invoke-static {v14, v15, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v9, v14

    const/16 v6, 0x22

    move-wide/from16 v26, v14

    move-wide/from16 v14, v18

    .line 1407
    invoke-static {v14, v15, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v4, v14

    const/16 v6, 0x29

    move-wide/from16 v18, v4

    move-wide/from16 v4, v23

    move-wide/from16 v23, v0

    move-wide/from16 v0, v30

    .line 1409
    invoke-static {v4, v5, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x3b

    move-wide/from16 v30, v0

    move-wide/from16 v0, v16

    move-wide/from16 v16, v2

    move-wide/from16 v2, v32

    .line 1411
    invoke-static {v0, v1, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v6, 0x11

    move-wide/from16 v32, v2

    move-wide/from16 v2, v28

    move-wide/from16 v28, v14

    move-wide/from16 v14, v35

    .line 1413
    invoke-static {v2, v3, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v6, 0x26

    .line 1416
    invoke-static {v2, v3, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x13

    .line 1418
    invoke-static {v4, v5, v6, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0xa

    .line 1420
    invoke-static {v0, v1, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v6, 0x37

    move-wide/from16 v35, v4

    move-wide/from16 v4, v16

    move-wide/from16 v16, v0

    move-wide/from16 v0, v28

    .line 1422
    invoke-static {v0, v1, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x31

    move-wide/from16 v28, v0

    move-wide/from16 v0, v23

    .line 1424
    invoke-static {v0, v1, v6, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x12

    move-wide/from16 v23, v14

    move-wide/from16 v14, v20

    move-wide/from16 v71, v2

    move-wide/from16 v2, v18

    move-wide/from16 v18, v71

    .line 1426
    invoke-static {v14, v15, v6, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v2, v14

    const/16 v6, 0x17

    move-wide/from16 v20, v2

    move-wide/from16 v2, v37

    move-wide/from16 v71, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v71

    .line 1428
    invoke-static {v2, v3, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x34

    move-wide/from16 v37, v0

    move-wide/from16 v0, v26

    move-wide/from16 v26, v9

    move-wide/from16 v9, v32

    .line 1430
    invoke-static {v0, v1, v6, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v6, 0x18

    .line 1433
    invoke-static {v0, v1, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v6, v7, v0

    const/16 v8, 0xd

    .line 1435
    invoke-static {v14, v15, v8, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long v11, v12, v14

    const/16 v8, 0x8

    .line 1437
    invoke-static {v2, v3, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v13, 0x2f

    move-wide/from16 v32, v9

    move-wide/from16 v8, v26

    move-wide/from16 v26, v0

    move-wide/from16 v0, v30

    .line 1439
    invoke-static {v0, v1, v13, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v8, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v18

    const/16 v10, 0x8

    move-wide/from16 v18, v2

    move-wide/from16 v2, v32

    .line 1441
    invoke-static {v0, v1, v10, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v0, v2, v32

    const/16 v2, 0x11

    move-wide/from16 v39, v0

    move-wide/from16 v0, v16

    move-wide/from16 v16, v4

    move-wide/from16 v3, v23

    .line 1443
    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v2, v3, v0

    const/16 v4, 0x16

    move-wide/from16 v23, v0

    move-wide/from16 v0, v35

    move-wide/from16 v71, v2

    move-wide/from16 v2, v20

    move-wide/from16 v20, v71

    .line 1445
    invoke-static {v0, v1, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v42

    sub-long v0, v2, v42

    const/16 v2, 0x25

    move-wide/from16 v3, v28

    move-wide/from16 v28, v0

    move-wide/from16 v0, v37

    .line 1447
    invoke-static {v3, v4, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v46

    sub-long v44, v0, v46

    add-int/lit8 v0, v69, -0x2

    move-wide/from16 v35, v20

    move-wide/from16 v37, v23

    move-object/from16 v2, v56

    move-object/from16 v3, v58

    move-object/from16 v4, v59

    move-object/from16 v1, v68

    const/16 v5, 0x9

    move-wide/from16 v20, v16

    move-wide/from16 v23, v18

    move-wide/from16 v16, v11

    move-wide/from16 v18, v14

    move-wide/from16 v13, v26

    const/16 v12, 0xc

    const/4 v15, 0x4

    move-wide v10, v6

    move-wide/from16 v26, v8

    const/16 v6, 0xd

    const/4 v9, 0x1

    move v7, v0

    move-object/from16 v0, p0

    move-wide/from16 v71, v30

    move-wide/from16 v30, v39

    move-wide/from16 v39, v28

    move-wide/from16 v28, v71

    goto/16 :goto_0

    :cond_0
    move-object/from16 v68, v1

    move-object/from16 v56, v2

    const/4 v0, 0x0

    .line 1454
    aget-wide v1, v68, v0

    sub-long/2addr v10, v1

    const/4 v0, 0x1

    .line 1455
    aget-wide v1, v68, v0

    sub-long/2addr v13, v1

    const/4 v0, 0x2

    .line 1456
    aget-wide v1, v68, v0

    sub-long v16, v16, v1

    const/4 v0, 0x3

    .line 1457
    aget-wide v1, v68, v0

    sub-long v18, v18, v1

    const/4 v0, 0x4

    .line 1458
    aget-wide v1, v68, v0

    sub-long v20, v20, v1

    const/4 v0, 0x5

    .line 1459
    aget-wide v1, v68, v0

    sub-long v23, v23, v1

    .line 1460
    aget-wide v0, v68, v22

    sub-long v26, v26, v0

    .line 1461
    aget-wide v0, v68, v25

    sub-long v28, v28, v0

    const/16 v0, 0x8

    .line 1462
    aget-wide v1, v68, v0

    sub-long v30, v30, v1

    const/16 v0, 0x9

    .line 1463
    aget-wide v1, v68, v0

    sub-long v32, v32, v1

    const/16 v0, 0xa

    .line 1464
    aget-wide v1, v68, v0

    sub-long v35, v35, v1

    .line 1465
    aget-wide v0, v68, v34

    sub-long v37, v37, v0

    const/16 v0, 0xc

    .line 1466
    aget-wide v1, v68, v0

    sub-long v39, v39, v1

    const/16 v0, 0xd

    .line 1467
    aget-wide v1, v68, v0

    const/4 v0, 0x0

    aget-wide v3, v56, v0

    add-long/2addr v1, v3

    sub-long v42, v42, v1

    .line 1468
    aget-wide v1, v68, v41

    const/4 v3, 0x1

    aget-wide v4, v56, v3

    add-long/2addr v1, v4

    sub-long v44, v44, v1

    const/16 v1, 0xf

    .line 1469
    aget-wide v1, v68, v1

    sub-long v46, v46, v1

    .line 1474
    aput-wide v10, p2, v0

    .line 1475
    aput-wide v13, p2, v3

    const/4 v0, 0x2

    .line 1476
    aput-wide v16, p2, v0

    const/4 v0, 0x3

    .line 1477
    aput-wide v18, p2, v0

    const/4 v0, 0x4

    .line 1478
    aput-wide v20, p2, v0

    const/4 v0, 0x5

    .line 1479
    aput-wide v23, p2, v0

    .line 1480
    aput-wide v26, p2, v22

    .line 1481
    aput-wide v28, p2, v25

    const/16 v0, 0x8

    .line 1482
    aput-wide v30, p2, v0

    const/16 v0, 0x9

    .line 1483
    aput-wide v32, p2, v0

    const/16 v0, 0xa

    .line 1484
    aput-wide v35, p2, v0

    .line 1485
    aput-wide v37, p2, v34

    const/16 v0, 0xc

    .line 1486
    aput-wide v39, p2, v0

    const/16 v0, 0xd

    .line 1487
    aput-wide v42, p2, v0

    .line 1488
    aput-wide v44, p2, v41

    const/16 v0, 0xf

    .line 1489
    aput-wide v46, p2, v0

    return-void

    .line 1251
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1247
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method encryptBlock([J[J)V
    .locals 80

    move-object/from16 v0, p0

    .line 1022
    iget-object v1, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1023
    iget-object v2, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1024
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v3

    .line 1025
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    .line 1028
    array-length v5, v1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_2

    .line 1032
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    .line 1040
    aget-wide v7, p1, v5

    const/4 v9, 0x1

    .line 1041
    aget-wide v10, p1, v9

    const/4 v12, 0x2

    .line 1042
    aget-wide v13, p1, v12

    const/4 v15, 0x3

    .line 1043
    aget-wide v16, p1, v15

    const/4 v15, 0x4

    .line 1044
    aget-wide v19, p1, v15

    .line 1045
    aget-wide v21, p1, v6

    const/16 v23, 0x6

    .line 1046
    aget-wide v24, p1, v23

    const/16 v26, 0x7

    .line 1047
    aget-wide v27, p1, v26

    const/16 v6, 0x8

    .line 1048
    aget-wide v30, p1, v6

    const/16 v6, 0x9

    .line 1049
    aget-wide v33, p1, v6

    const/16 v6, 0xa

    .line 1050
    aget-wide v36, p1, v6

    const/16 v38, 0xb

    .line 1051
    aget-wide v39, p1, v38

    const/16 v6, 0xc

    .line 1052
    aget-wide v42, p1, v6

    const/16 v6, 0xd

    .line 1053
    aget-wide v45, p1, v6

    const/16 v47, 0xe

    .line 1054
    aget-wide v48, p1, v47

    const/16 v50, 0xf

    .line 1055
    aget-wide v50, p1, v50

    .line 1060
    aget-wide v52, v1, v5

    add-long v7, v7, v52

    .line 1061
    aget-wide v52, v1, v9

    add-long v10, v10, v52

    .line 1062
    aget-wide v52, v1, v12

    add-long v13, v13, v52

    const/16 v18, 0x3

    .line 1063
    aget-wide v52, v1, v18

    add-long v16, v16, v52

    .line 1064
    aget-wide v52, v1, v15

    add-long v19, v19, v52

    const/16 v29, 0x5

    .line 1065
    aget-wide v52, v1, v29

    add-long v21, v21, v52

    .line 1066
    aget-wide v52, v1, v23

    add-long v24, v24, v52

    .line 1067
    aget-wide v52, v1, v26

    add-long v27, v27, v52

    const/16 v32, 0x8

    .line 1068
    aget-wide v52, v1, v32

    add-long v30, v30, v52

    const/16 v35, 0x9

    .line 1069
    aget-wide v52, v1, v35

    add-long v33, v33, v52

    const/16 v41, 0xa

    .line 1070
    aget-wide v52, v1, v41

    add-long v36, v36, v52

    .line 1071
    aget-wide v52, v1, v38

    add-long v39, v39, v52

    const/16 v44, 0xc

    .line 1072
    aget-wide v52, v1, v44

    add-long v42, v42, v52

    .line 1073
    aget-wide v52, v1, v6

    aget-wide v54, v2, v5

    add-long v52, v52, v54

    add-long v45, v45, v52

    .line 1074
    aget-wide v52, v1, v47

    aget-wide v54, v2, v9

    add-long v52, v52, v54

    add-long v48, v48, v52

    const/16 v52, 0xf

    .line 1075
    aget-wide v52, v1, v52

    add-long v50, v50, v52

    move-wide/from16 v5, v16

    move-wide/from16 v56, v27

    move-wide/from16 v58, v33

    move-wide/from16 v60, v39

    move-wide/from16 v62, v45

    move-wide/from16 v64, v50

    move-wide/from16 v16, v13

    move-wide v13, v10

    move-wide v10, v7

    move-wide/from16 v8, v21

    const/4 v7, 0x1

    move-wide/from16 v20, v19

    :goto_0
    const/16 v12, 0x14

    if-ge v7, v12, :cond_0

    .line 1090
    aget v12, v3, v7

    .line 1091
    aget v28, v4, v7

    const/16 v15, 0x18

    add-long/2addr v10, v13

    .line 1099
    invoke-static {v13, v14, v15, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-object v15, v3

    move-object/from16 v34, v4

    add-long v3, v16, v5

    const/16 v0, 0xd

    .line 1100
    invoke-static {v5, v6, v0, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    move-object/from16 v39, v1

    add-long v0, v20, v8

    move-object/from16 v40, v15

    const/16 v15, 0x8

    .line 1101
    invoke-static {v8, v9, v15, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v15, 0x2f

    move-wide/from16 v16, v8

    move/from16 v45, v12

    move-wide/from16 v50, v13

    move-wide/from16 v12, v56

    move v14, v7

    add-long v7, v24, v12

    .line 1102
    invoke-static {v12, v13, v15, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-wide/from16 v52, v5

    move v9, v14

    move-wide/from16 v14, v58

    add-long v5, v30, v14

    move/from16 v20, v9

    const/16 v9, 0x8

    .line 1103
    invoke-static {v14, v15, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v9, 0x11

    move-wide/from16 v24, v5

    move-wide/from16 v54, v12

    move-wide/from16 v5, v60

    add-long v12, v36, v5

    .line 1104
    invoke-static {v5, v6, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v9, 0x16

    move-wide/from16 v56, v0

    move-wide/from16 v30, v12

    move-wide/from16 v12, v62

    add-long v0, v42, v12

    .line 1105
    invoke-static {v12, v13, v9, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v9, 0x25

    move-wide/from16 v36, v0

    move-wide/from16 v58, v5

    move-wide/from16 v0, v64

    add-long v5, v48, v0

    .line 1106
    invoke-static {v0, v1, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v9, 0x26

    add-long/2addr v10, v14

    .line 1108
    invoke-static {v14, v15, v9, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v9, 0x13

    add-long/2addr v3, v12

    .line 1109
    invoke-static {v12, v13, v9, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long v7, v7, v58

    move-wide/from16 v42, v14

    move-wide/from16 v14, v58

    const/16 v9, 0xa

    .line 1110
    invoke-static {v14, v15, v9, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v9, 0x37

    move-wide/from16 v48, v14

    add-long v14, v56, v0

    .line 1111
    invoke-static {v0, v1, v9, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v9, 0x31

    move-wide/from16 v56, v12

    add-long v12, v30, v54

    move-wide/from16 v30, v0

    move-wide/from16 v0, v54

    .line 1112
    invoke-static {v0, v1, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v9, 0x12

    move-wide/from16 v54, v12

    add-long v12, v36, v52

    move-wide/from16 v36, v7

    move-wide/from16 v7, v52

    .line 1113
    invoke-static {v7, v8, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x17

    add-long v5, v5, v16

    move-wide/from16 v52, v12

    move-wide/from16 v12, v16

    .line 1114
    invoke-static {v12, v13, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v9, 0x34

    move-wide/from16 v16, v5

    add-long v5, v24, v50

    move-wide/from16 v24, v7

    move-wide/from16 v7, v50

    .line 1115
    invoke-static {v7, v8, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x21

    add-long/2addr v10, v0

    .line 1117
    invoke-static {v0, v1, v9, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v3, v12

    const/4 v9, 0x4

    .line 1118
    invoke-static {v12, v13, v9, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v9, 0x33

    add-long v14, v14, v24

    move-wide/from16 v50, v0

    move-wide/from16 v0, v24

    .line 1119
    invoke-static {v0, v1, v9, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v24, v0

    add-long v0, v36, v7

    const/16 v9, 0xd

    .line 1120
    invoke-static {v7, v8, v9, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x22

    move-wide/from16 v36, v12

    add-long v12, v52, v30

    move-wide/from16 v52, v7

    move-wide/from16 v7, v30

    .line 1121
    invoke-static {v7, v8, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x29

    move-wide/from16 v30, v12

    add-long v12, v16, v56

    move-wide/from16 v16, v14

    move-wide/from16 v14, v56

    .line 1122
    invoke-static {v14, v15, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v9, 0x3b

    add-long v5, v5, v48

    move-wide/from16 v56, v12

    move-wide/from16 v12, v48

    .line 1123
    invoke-static {v12, v13, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v9, 0x11

    move-wide/from16 v48, v5

    add-long v5, v54, v42

    move-wide/from16 v54, v0

    move-wide/from16 v0, v42

    .line 1124
    invoke-static {v0, v1, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v10, v7

    const/4 v9, 0x5

    .line 1126
    invoke-static {v7, v8, v9, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x14

    add-long/2addr v3, v12

    .line 1127
    invoke-static {v12, v13, v9, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v9, 0x30

    move-wide/from16 v42, v7

    add-long v7, v54, v14

    .line 1128
    invoke-static {v14, v15, v9, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v9, 0x29

    move-wide/from16 v54, v14

    add-long v14, v16, v0

    .line 1129
    invoke-static {v0, v1, v9, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v9, 0x2f

    move-wide/from16 v16, v12

    add-long v12, v56, v52

    move-wide/from16 v56, v0

    move-wide/from16 v0, v52

    .line 1130
    invoke-static {v0, v1, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v9, 0x1c

    move-wide/from16 v52, v12

    add-long v12, v48, v36

    move-wide/from16 v48, v7

    move-wide/from16 v7, v36

    .line 1131
    invoke-static {v7, v8, v9, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x10

    add-long v5, v5, v24

    move-wide/from16 v36, v12

    move-wide/from16 v12, v24

    .line 1132
    invoke-static {v12, v13, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v9, 0x19

    move-wide/from16 v24, v5

    add-long v5, v30, v50

    move-wide/from16 v30, v7

    move-wide/from16 v7, v50

    .line 1133
    invoke-static {v7, v8, v9, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    .line 1138
    aget-wide v50, v39, v45

    add-long v10, v10, v50

    add-int/lit8 v9, v45, 0x1

    .line 1139
    aget-wide v50, v39, v9

    add-long v0, v0, v50

    add-int/lit8 v21, v45, 0x2

    .line 1140
    aget-wide v50, v39, v21

    add-long v3, v3, v50

    add-int/lit8 v46, v45, 0x3

    .line 1141
    aget-wide v50, v39, v46

    add-long v12, v12, v50

    add-int/lit8 v50, v45, 0x4

    .line 1142
    aget-wide v58, v39, v50

    add-long v14, v14, v58

    add-int/lit8 v51, v45, 0x5

    .line 1143
    aget-wide v58, v39, v51

    move-wide/from16 v60, v14

    add-long v14, v30, v58

    add-int/lit8 v30, v45, 0x6

    .line 1144
    aget-wide v58, v39, v30

    add-long v48, v48, v58

    add-int/lit8 v31, v45, 0x7

    .line 1145
    aget-wide v58, v39, v31

    add-long v7, v7, v58

    add-int/lit8 v58, v45, 0x8

    .line 1146
    aget-wide v62, v39, v58

    add-long v36, v36, v62

    add-int/lit8 v59, v45, 0x9

    .line 1147
    aget-wide v62, v39, v59

    move-wide/from16 v64, v7

    add-long v7, v56, v62

    add-int/lit8 v56, v45, 0xa

    .line 1148
    aget-wide v62, v39, v56

    add-long v24, v24, v62

    add-int/lit8 v57, v45, 0xb

    .line 1149
    aget-wide v62, v39, v57

    move-wide/from16 v66, v7

    add-long v7, v16, v62

    add-int/lit8 v16, v45, 0xc

    .line 1150
    aget-wide v62, v39, v16

    add-long v5, v5, v62

    add-int/lit8 v17, v45, 0xd

    .line 1151
    aget-wide v62, v39, v17

    aget-wide v68, v2, v28

    add-long v62, v62, v68

    move-wide/from16 v68, v5

    add-long v5, v54, v62

    add-int/lit8 v54, v45, 0xe

    .line 1152
    aget-wide v62, v39, v54

    add-int/lit8 v55, v28, 0x1

    aget-wide v70, v2, v55

    add-long v62, v62, v70

    add-long v52, v52, v62

    add-int/lit8 v62, v45, 0xf

    .line 1153
    aget-wide v70, v39, v62

    move-object/from16 v63, v2

    move-wide/from16 v72, v5

    move/from16 v2, v20

    int-to-long v5, v2

    add-long v70, v70, v5

    move-wide/from16 v74, v5

    add-long v5, v42, v70

    const/16 v2, 0x29

    add-long/2addr v10, v0

    .line 1158
    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v3, v12

    const/16 v2, 0x9

    .line 1159
    invoke-static {v12, v13, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v2, 0x25

    move-wide/from16 v42, v0

    add-long v0, v60, v14

    .line 1160
    invoke-static {v14, v15, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v2, 0x1f

    move-wide/from16 v60, v14

    add-long v14, v48, v64

    move-wide/from16 v48, v12

    move-wide/from16 v12, v64

    .line 1161
    invoke-static {v12, v13, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-wide/from16 v64, v12

    add-long v12, v36, v66

    move-wide/from16 v36, v0

    move-wide/from16 v0, v66

    const/16 v2, 0xc

    .line 1162
    invoke-static {v0, v1, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x2f

    move-wide/from16 v66, v12

    add-long v12, v24, v7

    .line 1163
    invoke-static {v7, v8, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x2c

    move-wide/from16 v24, v12

    add-long v12, v68, v72

    move-wide/from16 v68, v7

    move-wide/from16 v7, v72

    .line 1164
    invoke-static {v7, v8, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x1e

    move-wide/from16 v70, v12

    add-long v12, v52, v5

    .line 1165
    invoke-static {v5, v6, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v2, 0x10

    add-long/2addr v10, v0

    .line 1167
    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x22

    add-long/2addr v3, v7

    .line 1168
    invoke-static {v7, v8, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x38

    add-long v14, v14, v68

    move-wide/from16 v52, v0

    move-wide/from16 v0, v68

    .line 1169
    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x33

    move-wide/from16 v68, v0

    add-long v0, v36, v5

    .line 1170
    invoke-static {v5, v6, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    move-wide/from16 v36, v7

    add-long v7, v24, v64

    move-wide/from16 v24, v5

    move-wide/from16 v5, v64

    const/4 v2, 0x4

    .line 1171
    invoke-static {v5, v6, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v2, 0x35

    move-wide/from16 v64, v7

    add-long v7, v70, v48

    move-wide/from16 v70, v14

    move-wide/from16 v14, v48

    .line 1172
    invoke-static {v14, v15, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v2, 0x2a

    add-long v12, v12, v60

    move-wide/from16 v48, v7

    move-wide/from16 v7, v60

    .line 1173
    invoke-static {v7, v8, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x29

    move-wide/from16 v60, v12

    add-long v12, v66, v42

    move-wide/from16 v66, v0

    move-wide/from16 v0, v42

    .line 1174
    invoke-static {v0, v1, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x1f

    add-long/2addr v10, v5

    .line 1176
    invoke-static {v5, v6, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v2, 0x2c

    add-long/2addr v3, v7

    .line 1177
    invoke-static {v7, v8, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x2f

    move-wide/from16 v42, v5

    add-long v5, v66, v14

    .line 1178
    invoke-static {v14, v15, v2, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v2, 0x2e

    move-wide/from16 v66, v14

    add-long v14, v70, v0

    .line 1179
    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x13

    move-wide/from16 v70, v7

    add-long v7, v48, v24

    move-wide/from16 v48, v0

    move-wide/from16 v0, v24

    .line 1180
    invoke-static {v0, v1, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x2a

    move-wide/from16 v24, v7

    add-long v7, v60, v36

    move-wide/from16 v60, v5

    move-wide/from16 v5, v36

    .line 1181
    invoke-static {v5, v6, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v2, 0x2c

    add-long v12, v12, v68

    move-wide/from16 v36, v7

    move-wide/from16 v7, v68

    .line 1182
    invoke-static {v7, v8, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x19

    move-wide/from16 v68, v12

    add-long v12, v64, v52

    move-wide/from16 v64, v5

    move-wide/from16 v5, v52

    .line 1183
    invoke-static {v5, v6, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v10, v0

    const/16 v2, 0x9

    .line 1185
    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x30

    add-long/2addr v3, v7

    .line 1186
    invoke-static {v7, v8, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x23

    add-long v14, v14, v64

    move-wide/from16 v52, v0

    move-wide/from16 v0, v64

    .line 1187
    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x34

    move-wide/from16 v64, v0

    add-long v0, v60, v5

    .line 1188
    invoke-static {v5, v6, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v2, 0x17

    move-wide/from16 v60, v7

    add-long v7, v36, v48

    move-wide/from16 v36, v5

    move-wide/from16 v5, v48

    .line 1189
    invoke-static {v5, v6, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v2, 0x1f

    move-wide/from16 v48, v7

    add-long v7, v68, v70

    move-wide/from16 v68, v14

    move-wide/from16 v14, v70

    .line 1190
    invoke-static {v14, v15, v2, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v2, 0x25

    add-long v12, v12, v66

    move-wide/from16 v70, v7

    move-wide/from16 v7, v66

    .line 1191
    invoke-static {v7, v8, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x14

    move-wide/from16 v66, v12

    add-long v12, v24, v42

    move-wide/from16 v24, v14

    move-wide/from16 v14, v42

    .line 1192
    invoke-static {v14, v15, v2, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    .line 1197
    aget-wide v42, v39, v9

    add-long v10, v10, v42

    .line 1198
    aget-wide v42, v39, v21

    add-long v5, v5, v42

    .line 1199
    aget-wide v42, v39, v46

    add-long v2, v3, v42

    .line 1200
    aget-wide v42, v39, v50

    add-long v7, v7, v42

    .line 1201
    aget-wide v42, v39, v51

    add-long v0, v0, v42

    .line 1202
    aget-wide v42, v39, v30

    add-long v24, v24, v42

    .line 1203
    aget-wide v30, v39, v31

    add-long v30, v68, v30

    .line 1204
    aget-wide v42, v39, v58

    add-long v14, v14, v42

    .line 1205
    aget-wide v42, v39, v59

    add-long v42, v70, v42

    .line 1206
    aget-wide v50, v39, v56

    add-long v58, v36, v50

    .line 1207
    aget-wide v36, v39, v57

    add-long v36, v66, v36

    .line 1208
    aget-wide v50, v39, v16

    add-long v60, v60, v50

    .line 1209
    aget-wide v16, v39, v17

    add-long v12, v12, v16

    .line 1210
    aget-wide v16, v39, v54

    aget-wide v50, v63, v55

    add-long v16, v16, v50

    add-long v16, v64, v16

    .line 1211
    aget-wide v50, v39, v62

    const/4 v4, 0x2

    add-int/lit8 v28, v28, 0x2

    aget-wide v54, v63, v28

    add-long v50, v50, v54

    add-long v48, v48, v50

    add-int/lit8 v4, v45, 0x10

    .line 1212
    aget-wide v45, v39, v4

    add-long v45, v45, v74

    const-wide/16 v50, 0x1

    add-long v45, v45, v50

    add-long v64, v52, v45

    add-int/lit8 v4, v20, 0x2

    move-wide/from16 v20, v0

    move-wide/from16 v56, v14

    move-object/from16 v1, v39

    move-object/from16 v0, p0

    const/4 v15, 0x4

    move-wide/from16 v76, v7

    move v7, v4

    move-wide/from16 v8, v24

    move-wide/from16 v24, v30

    move-object/from16 v4, v34

    move-wide/from16 v30, v42

    move-wide/from16 v42, v12

    move-wide v13, v5

    move-wide/from16 v5, v76

    move-wide/from16 v78, v2

    move-object/from16 v3, v40

    move-object/from16 v2, v63

    move-wide/from16 v62, v16

    move-wide/from16 v16, v78

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v45, v5

    move-wide v2, v13

    move-wide/from16 v50, v56

    move-wide/from16 v14, v58

    move-wide/from16 v5, v60

    move-wide/from16 v12, v62

    move-wide/from16 v0, v64

    const/4 v4, 0x0

    .line 1219
    aput-wide v10, p2, v4

    const/4 v4, 0x1

    .line 1220
    aput-wide v2, p2, v4

    const/4 v2, 0x2

    .line 1221
    aput-wide v16, p2, v2

    const/4 v2, 0x3

    .line 1222
    aput-wide v45, p2, v2

    const/4 v2, 0x4

    .line 1223
    aput-wide v20, p2, v2

    const/4 v2, 0x5

    .line 1224
    aput-wide v8, p2, v2

    .line 1225
    aput-wide v24, p2, v23

    .line 1226
    aput-wide v50, p2, v26

    const/16 v2, 0x8

    .line 1227
    aput-wide v30, p2, v2

    const/16 v2, 0x9

    .line 1228
    aput-wide v14, p2, v2

    const/16 v2, 0xa

    .line 1229
    aput-wide v36, p2, v2

    .line 1230
    aput-wide v5, p2, v38

    const/16 v2, 0xc

    .line 1231
    aput-wide v42, p2, v2

    const/16 v2, 0xd

    .line 1232
    aput-wide v12, p2, v2

    .line 1233
    aput-wide v48, p2, v47

    const/16 v2, 0xf

    .line 1234
    aput-wide v0, p2, v2

    return-void

    .line 1034
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1030
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
