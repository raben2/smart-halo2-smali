.class public Lcom/instabug/library/annotation/g/b;
.super Ljava/lang/Object;
.source "BitmapUtility.java"


# direct methods
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, -0x6

    .line 223
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 226
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 231
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v3, -0xbdbdbe

    .line 232
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    .line 236
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 237
    invoke-virtual {v2, v3, v6, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v8, 0x0

    .line 240
    invoke-virtual {v2, p0, v8, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 242
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, -0x1000000

    .line 243
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 245
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float/2addr v7, v0

    .line 247
    invoke-virtual {v2, v3, v6, v7, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, p1

    .line 214
    div-int/lit8 v2, v2, 0x64

    mul-int p1, p1, v1

    .line 215
    div-int/lit8 p1, p1, 0x64

    sub-int v3, v2, v0

    .line 217
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p1, v1

    .line 218
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    .line 220
    invoke-static {p0, v2, p1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 221
    invoke-static {p0, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 37
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-le v4, v12, :cond_0

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 4
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 5
    invoke-static {v4, v0, v5, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 9
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float v1, v1

    .line 10
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 11
    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 12
    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 13
    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_0
    if-ge v1, v3, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v0, v13

    .line 24
    new-array v15, v14, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v15

    move v7, v0

    move v10, v0

    move v11, v13

    .line 26
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v13, -0x1

    add-int v6, v1, v1

    add-int/2addr v6, v3

    .line 33
    new-array v7, v14, [I

    .line 34
    new-array v8, v14, [I

    .line 35
    new-array v9, v14, [I

    .line 37
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    add-int/lit8 v11, v6, 0x1

    shr-int/2addr v11, v3

    mul-int v11, v11, v11

    mul-int/lit16 v14, v11, 0x100

    .line 41
    new-array v3, v14, [I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_2

    .line 43
    div-int v18, v12, v11

    aput v18, v3, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x3

    .line 48
    filled-new-array {v6, v11}, [I

    move-result-object v11

    const-class v12, I

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    add-int/lit8 v12, v1, 0x1

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    const/16 v20, 0x2

    if-ge v14, v13, :cond_7

    move-object/from16 v21, v2

    neg-int v2, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_2
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v2, v1, :cond_4

    move/from16 v33, v5

    move/from16 p2, v13

    const/4 v13, 0x0

    .line 60
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v18, v5

    aget v5, v15, v5

    add-int v34, v2, v1

    .line 61
    aget-object v34, v11, v34

    and-int v32, v5, v32

    const/16 v17, 0x10

    shr-int/lit8 v32, v32, 0x10

    .line 62
    aput v32, v34, v13

    and-int v31, v5, v31

    shr-int/lit8 v31, v31, 0x8

    const/16 v16, 0x1

    .line 63
    aput v31, v34, v16

    and-int/lit16 v5, v5, 0xff

    .line 64
    aput v5, v34, v20

    .line 65
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v12, v5

    .line 66
    aget v31, v34, v13

    mul-int v31, v31, v5

    add-int v24, v24, v31

    .line 67
    aget v31, v34, v16

    mul-int v31, v31, v5

    add-int v23, v23, v31

    .line 68
    aget v31, v34, v20

    mul-int v31, v31, v5

    add-int v22, v22, v31

    if-lez v2, :cond_3

    .line 70
    aget v5, v34, v13

    add-int v30, v30, v5

    .line 71
    aget v5, v34, v16

    add-int v29, v29, v5

    .line 72
    aget v5, v34, v20

    add-int v28, v28, v5

    goto :goto_3

    .line 74
    :cond_3
    aget v5, v34, v13

    add-int v27, v27, v5

    .line 75
    aget v5, v34, v16

    add-int v26, v26, v5

    .line 76
    aget v5, v34, v20

    add-int v25, v25, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, p2

    move/from16 v5, v33

    goto :goto_2

    :cond_4
    move/from16 v33, v5

    move/from16 p2, v13

    move v5, v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6

    .line 83
    aget v13, v3, v24

    aput v13, v7, v18

    .line 84
    aget v13, v3, v23

    aput v13, v8, v18

    .line 85
    aget v13, v3, v22

    aput v13, v9, v18

    sub-int v24, v24, v27

    sub-int v23, v23, v26

    sub-int v22, v22, v25

    sub-int v13, v5, v1

    add-int/2addr v13, v6

    .line 92
    rem-int/2addr v13, v6

    aget-object v13, v11, v13

    const/16 v34, 0x0

    .line 94
    aget v35, v13, v34

    sub-int v27, v27, v35

    const/16 v16, 0x1

    .line 95
    aget v34, v13, v16

    sub-int v26, v26, v34

    .line 96
    aget v34, v13, v20

    sub-int v25, v25, v34

    if-nez v14, :cond_5

    add-int v34, v2, v1

    move-object/from16 v35, v3

    add-int/lit8 v3, v34, 0x1

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v35, v3

    .line 101
    :goto_5
    aget v3, v10, v2

    add-int v3, v19, v3

    aget v3, v15, v3

    and-int v34, v3, v32

    const/16 v17, 0x10

    shr-int/lit8 v34, v34, 0x10

    const/16 v36, 0x0

    .line 103
    aput v34, v13, v36

    and-int v34, v3, v31

    shr-int/lit8 v34, v34, 0x8

    const/16 v16, 0x1

    .line 104
    aput v34, v13, v16

    and-int/lit16 v3, v3, 0xff

    .line 105
    aput v3, v13, v20

    .line 107
    aget v3, v13, v36

    add-int v30, v30, v3

    .line 108
    aget v3, v13, v16

    add-int v29, v29, v3

    .line 109
    aget v3, v13, v20

    add-int v28, v28, v3

    add-int v24, v24, v30

    add-int v23, v23, v29

    add-int v22, v22, v28

    add-int/lit8 v5, v5, 0x1

    .line 115
    rem-int/2addr v5, v6

    .line 116
    rem-int v3, v5, v6

    aget-object v3, v11, v3

    const/4 v13, 0x0

    .line 118
    aget v34, v3, v13

    add-int v27, v27, v34

    const/16 v16, 0x1

    .line 119
    aget v34, v3, v16

    add-int v26, v26, v34

    .line 120
    aget v34, v3, v20

    add-int v25, v25, v34

    .line 122
    aget v34, v3, v13

    sub-int v30, v30, v34

    .line 123
    aget v13, v3, v16

    sub-int v29, v29, v13

    .line 124
    aget v3, v3, v20

    sub-int v28, v28, v3

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v35

    goto/16 :goto_4

    :cond_6
    move-object/from16 v35, v3

    add-int v19, v19, v0

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, p2

    move-object/from16 v2, v21

    move/from16 v5, v33

    goto/16 :goto_1

    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v35, v3

    move/from16 v33, v5

    move/from16 p2, v13

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_d

    neg-int v3, v1

    mul-int v4, v3, v0

    move v14, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_7
    if-gt v3, v1, :cond_a

    move-object/from16 v26, v10

    const/4 v10, 0x0

    .line 134
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v27

    add-int v27, v27, v2

    add-int v28, v3, v1

    .line 136
    aget-object v28, v11, v28

    .line 138
    aget v29, v7, v27

    aput v29, v28, v10

    .line 139
    aget v10, v8, v27

    const/16 v16, 0x1

    aput v10, v28, v16

    .line 140
    aget v10, v9, v27

    aput v10, v28, v20

    .line 142
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v12, v10

    .line 144
    aget v29, v7, v27

    mul-int v29, v29, v10

    add-int v13, v13, v29

    .line 145
    aget v29, v8, v27

    mul-int v29, v29, v10

    add-int v5, v5, v29

    .line 146
    aget v27, v9, v27

    mul-int v27, v27, v10

    add-int v4, v4, v27

    if-lez v3, :cond_8

    const/4 v10, 0x0

    .line 149
    aget v27, v28, v10

    add-int v25, v25, v27

    const/16 v16, 0x1

    .line 150
    aget v27, v28, v16

    add-int v24, v24, v27

    .line 151
    aget v27, v28, v20

    add-int v23, v23, v27

    move/from16 v10, v33

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    const/16 v16, 0x1

    .line 153
    aget v27, v28, v10

    add-int v22, v22, v27

    .line 154
    aget v10, v28, v16

    add-int v19, v19, v10

    .line 155
    aget v10, v28, v20

    add-int v18, v18, v10

    move/from16 v10, v33

    :goto_8
    if-ge v3, v10, :cond_9

    add-int/2addr v14, v0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v33, v10

    move-object/from16 v10, v26

    goto :goto_7

    :cond_a
    move-object/from16 v26, v10

    move/from16 v10, v33

    move/from16 v3, p2

    move v14, v5

    move/from16 v28, v23

    move/from16 v27, v24

    move v5, v1

    move/from16 v24, v2

    move/from16 v23, v22

    move/from16 v22, v13

    move v13, v4

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_c

    .line 166
    aget v29, v15, v24

    const/high16 v30, -0x1000000

    and-int v29, v29, v30

    aget v30, v35, v22

    const/16 v17, 0x10

    shl-int/lit8 v30, v30, 0x10

    or-int v29, v29, v30

    aget v30, v35, v14

    shl-int/lit8 v30, v30, 0x8

    or-int v29, v29, v30

    aget v30, v35, v13

    or-int v29, v29, v30

    aput v29, v15, v24

    sub-int v22, v22, v23

    sub-int v14, v14, v19

    sub-int v13, v13, v18

    sub-int v29, v5, v1

    add-int v29, v29, v6

    .line 173
    rem-int v29, v29, v6

    aget-object v29, v11, v29

    const/16 v30, 0x0

    .line 175
    aget v31, v29, v30

    sub-int v23, v23, v31

    const/16 v16, 0x1

    .line 176
    aget v30, v29, v16

    sub-int v19, v19, v30

    .line 177
    aget v30, v29, v20

    sub-int v18, v18, v30

    if-nez v2, :cond_b

    add-int v1, v4, v12

    .line 180
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v0

    aput v1, v26, v4

    .line 182
    :cond_b
    aget v1, v26, v4

    add-int/2addr v1, v2

    .line 184
    aget v30, v7, v1

    const/16 v31, 0x0

    aput v30, v29, v31

    .line 185
    aget v30, v8, v1

    const/16 v16, 0x1

    aput v30, v29, v16

    .line 186
    aget v1, v9, v1

    aput v1, v29, v20

    .line 188
    aget v1, v29, v31

    add-int v25, v25, v1

    .line 189
    aget v1, v29, v16

    add-int v27, v27, v1

    .line 190
    aget v1, v29, v20

    add-int v28, v28, v1

    add-int v22, v22, v25

    add-int v14, v14, v27

    add-int v13, v13, v28

    add-int/lit8 v5, v5, 0x1

    .line 196
    rem-int/2addr v5, v6

    .line 197
    aget-object v1, v11, v5

    const/16 v29, 0x0

    .line 199
    aget v30, v1, v29

    add-int v23, v23, v30

    const/16 v16, 0x1

    .line 200
    aget v30, v1, v16

    add-int v19, v19, v30

    .line 201
    aget v30, v1, v20

    add-int v18, v18, v30

    .line 203
    aget v30, v1, v29

    sub-int v25, v25, v30

    .line 204
    aget v30, v1, v16

    sub-int v27, v27, v30

    .line 205
    aget v1, v1, v20

    sub-int v28, v28, v1

    add-int v24, v24, v0

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    goto/16 :goto_9

    :cond_c
    const/16 v16, 0x1

    const/16 v17, 0x10

    const/16 v29, 0x0

    add-int/lit8 v2, v2, 0x1

    move/from16 p2, v3

    move/from16 v33, v10

    move-object/from16 v10, v26

    move/from16 v1, p1

    goto/16 :goto_6

    :cond_d
    move/from16 v3, p2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v21

    move-object v5, v15

    move v7, v0

    move v10, v0

    move v11, v3

    .line 211
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method
