.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

.field mLastMeasuredHeight:I

.field mLastMeasuredWidth:I

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 52
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 63
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    .line 284
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 285
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 63
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    .line 284
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 285
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 127
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 128
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 129
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    .line 131
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    .line 134
    :pswitch_1
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private diff(FF)Z
    .locals 3

    .line 240
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    .line 243
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 241
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static final xRotate(FFFFFF)F
    .locals 0

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float p4, p4, p1

    mul-float p5, p5, p0

    sub-float/2addr p4, p5

    add-float/2addr p4, p2

    return p4
.end method

.method private static final yRotate(FFFFFF)F
    .locals 0

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float p4, p4, p0

    mul-float p5, p5, p1

    add-float/2addr p4, p5

    add-float/2addr p4, p3

    return p4
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 5

    .line 662
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 663
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 664
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 665
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 666
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 667
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 668
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 670
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_0

    .line 671
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 1
    .param p1    # Landroidx/constraintlayout/motion/widget/MotionPaths;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 657
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 3

    const/4 p3, 0x0

    .line 248
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x1

    .line 249
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v1, p4

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x2

    .line 250
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr p4, v1

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x3

    .line 251
    aget-boolean p4, p2, p3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v0

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x4

    .line 252
    aget-boolean p4, p2, p3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result p1

    or-int/2addr p1, p4

    aput-boolean p1, p2, p3

    return-void
.end method

.method fillStandard([D[I)V
    .locals 6

    const/4 v0, 0x6

    .line 613
    new-array v0, v0, [F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    const/4 v3, 0x2

    aput v1, v0, v3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/4 v3, 0x3

    aput v1, v0, v3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v3, 0x4

    aput v1, v0, v3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v3, 0x5

    aput v1, v0, v3

    const/4 v1, 0x0

    .line 615
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 616
    aget v3, p2, v2

    array-length v4, v0

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 617
    aget v4, p2, v2

    aget v4, v0, v4

    float-to-double v4, v4

    aput-wide v4, p1, v1

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getCenter([I[D[FI)V
    .locals 7

    .line 257
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 258
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 259
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 260
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v4, 0x0

    .line 262
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 263
    aget-wide v5, p2, v4

    double-to-float v5, v5

    .line 265
    aget v6, p1, v4

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v3, v5

    goto :goto_1

    :pswitch_1
    move v2, v5

    goto :goto_1

    :pswitch_2
    move v1, v5

    goto :goto_1

    :pswitch_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    const/4 p2, 0x0

    add-float/2addr v0, p2

    .line 280
    aput v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    div-float/2addr v3, p1

    add-float/2addr v1, v3

    add-float/2addr v1, p2

    .line 281
    aput v1, p3, p4

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 5

    .line 631
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 632
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 633
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result p1

    float-to-double v2, p1

    aput-wide v2, p2, p3

    return v1

    .line 636
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    .line 637
    new-array v1, v0, [F

    .line 638
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 640
    aget v3, v1, p1

    float-to-double v3, v3

    aput-wide v3, p2, p3

    add-int/lit8 p1, p1, 0x1

    move p3, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    .line 627
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result p1

    return p1
.end method

.method getRect([I[D[FI)V
    .locals 7

    .line 411
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 412
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 413
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 414
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v4, 0x0

    .line 429
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 430
    aget-wide v5, p2, v4

    double-to-float v5, v5

    .line 432
    aget v6, p1, v4

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v3, v5

    goto :goto_1

    :pswitch_1
    move v2, v5

    goto :goto_1

    :pswitch_2
    move v1, v5

    goto :goto_1

    :pswitch_3
    move v0, v5

    :goto_1
    :pswitch_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-float/2addr v2, v0

    add-float/2addr v3, v1

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 465
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    .line 468
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/4 p1, 0x0

    add-float p2, v0, p1

    add-float v4, v1, p1

    add-float v5, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    add-float v6, v3, p1

    add-float/2addr v0, p1

    add-float/2addr v3, p1

    add-int/lit8 p1, p4, 0x1

    .line 516
    aput p2, p3, p4

    add-int/lit8 p2, p1, 0x1

    .line 517
    aput v4, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 518
    aput v5, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 519
    aput v1, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 520
    aput v2, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 521
    aput v6, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 522
    aput v0, p3, p2

    .line 523
    aput v3, p3, p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1

    .line 623
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 82
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 84
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 86
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 87
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 88
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 89
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v9, v7, v8

    .line 90
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v12, v10, v11

    .line 92
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 96
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v8, v14

    add-float/2addr v15, v13

    .line 97
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v16, v11, v14

    add-float v16, v1, v16

    .line 98
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float/2addr v7, v14

    add-float/2addr v2, v7

    .line 99
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float/2addr v10, v14

    add-float/2addr v3, v10

    sub-float/2addr v2, v15

    sub-float v3, v3, v16

    mul-float v7, v2, v4

    add-float/2addr v13, v7

    mul-float v9, v9, v5

    div-float v5, v9, v14

    sub-float/2addr v13, v5

    float-to-int v7, v13

    int-to-float v7, v7

    .line 102
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v7, v3, v4

    add-float/2addr v1, v7

    mul-float v12, v12, v6

    div-float v6, v12, v14

    sub-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    .line 103
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    .line 104
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v11, v12

    float-to-int v1, v11

    int-to-float v1, v1

    .line 105
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move-object/from16 v1, p1

    .line 107
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 108
    :goto_2
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 109
    :goto_3
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 110
    :goto_4
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    :goto_5
    const/4 v10, 0x2

    .line 111
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v10, p2

    .line 112
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v7, v7, v2

    add-float/2addr v11, v7

    mul-float v9, v9, v3

    add-float/2addr v11, v9

    sub-float/2addr v11, v5

    float-to-int v5, v11

    int-to-float v5, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 113
    iget v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v2, v2, v8

    add-float/2addr v5, v2

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    float-to-int v2, v5

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 115
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 116
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 186
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 188
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 190
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 191
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 192
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 194
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v7, v8

    .line 195
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v8, v9

    .line 197
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 199
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 201
    :goto_2
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v10, v11

    add-float/2addr v12, v9

    .line 202
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float v15, v14, v11

    add-float/2addr v15, v13

    .line 203
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v1, v11

    add-float/2addr v2, v1

    .line 204
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    sub-float/2addr v2, v12

    sub-float/2addr v1, v15

    mul-float v3, v2, v4

    add-float/2addr v9, v3

    mul-float v7, v7, v5

    div-float v5, v7, v11

    sub-float/2addr v9, v5

    float-to-int v9, v9

    int-to-float v9, v9

    .line 207
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v4, v4, v1

    add-float/2addr v13, v4

    mul-float v8, v8, v6

    div-float v6, v8, v11

    sub-float/2addr v13, v6

    float-to-int v9, v13

    int-to-float v9, v9

    .line 208
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v10, v7

    float-to-int v7, v10

    int-to-float v7, v7

    .line 209
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v14, v8

    float-to-int v7, v14

    int-to-float v7, v7

    .line 210
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move-object/from16 v7, p1

    .line 211
    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_3
    neg-float v1, v1

    mul-float v1, v1, v8

    mul-float v2, v2, v8

    const/4 v8, 0x1

    .line 217
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v8, p2

    .line 218
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float/2addr v9, v3

    sub-float/2addr v9, v5

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 219
    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 220
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float/2addr v3, v1

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 221
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 223
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 224
    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 144
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 146
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 148
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 149
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 150
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 152
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v9, v7, v8

    .line 153
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v12, v10, v11

    .line 155
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 159
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v8, v14

    add-float/2addr v15, v13

    .line 160
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v16, v11, v14

    add-float v16, v2, v16

    .line 161
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float/2addr v7, v14

    add-float/2addr v1, v7

    .line 162
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float/2addr v10, v14

    add-float/2addr v3, v10

    sub-float/2addr v1, v15

    sub-float v3, v3, v16

    mul-float v1, v1, v4

    add-float/2addr v13, v1

    mul-float v9, v9, v5

    div-float v1, v9, v14

    sub-float/2addr v13, v1

    float-to-int v1, v13

    int-to-float v1, v1

    .line 165
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    mul-float v12, v12, v6

    div-float v1, v12, v14

    sub-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 166
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    .line 167
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v11, v12

    float-to-int v1, v11

    int-to-float v1, v1

    .line 168
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v1, 0x3

    .line 170
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v1, p3

    .line 171
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v2, p1

    int-to-float v2, v2

    .line 172
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 173
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 175
    :cond_2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    move/from16 v2, p2

    int-to-float v2, v2

    .line 176
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 177
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 180
    :cond_3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 181
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method setBounds(FFFF)V
    .locals 0

    .line 647
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 648
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 649
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 650
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    float-to-int p1, p3

    const/high16 p2, 0x40000000    # 2.0f

    .line 651
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    float-to-int p1, p4

    .line 652
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .locals 11

    move-object v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 551
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_0

    .line 552
    aget-wide v8, p5, v3

    double-to-float v8, v8

    .line 553
    aget-wide v9, p6, v3

    .line 557
    aget v9, v0, v3

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v7, v8

    goto :goto_1

    :pswitch_1
    move v5, v8

    goto :goto_1

    :pswitch_2
    move v6, v8

    goto :goto_1

    :pswitch_3
    move v4, v8

    :goto_1
    :pswitch_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    mul-float v0, v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float v0, v2, v7

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v5, v0

    mul-float v7, v7, v0

    add-float/2addr v5, v4

    add-float/2addr v7, v6

    sub-float v3, v0, p1

    mul-float v4, v4, v3

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 608
    aput v4, p3, v1

    sub-float/2addr v0, p2

    mul-float v6, v6, v0

    mul-float v7, v7, p2

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    const/4 v0, 0x1

    .line 609
    aput v6, p3, v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setView(Landroid/view/View;[I[D[D[D)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 289
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 290
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 291
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 292
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 305
    array-length v7, v2

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v7, v7

    array-length v9, v2

    sub-int/2addr v9, v8

    aget v9, v2, v9

    if-gt v7, v9, :cond_0

    .line 306
    array-length v7, v2

    sub-int/2addr v7, v8

    aget v7, v2, v7

    add-int/2addr v7, v8

    .line 307
    new-array v9, v7, [D

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 308
    new-array v7, v7, [D

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 310
    :cond_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v9, 0x0

    .line 311
    :goto_0
    array-length v10, v2

    if-ge v9, v10, :cond_1

    .line 312
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v11, v2, v9

    aget-wide v12, p3, v9

    aput-wide v12, v10, v11

    .line 313
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget v11, v2, v9

    aget-wide v12, p4, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x7fc00000    # Float.NaN

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    const/4 v3, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 316
    :goto_1
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v8, v7

    if-ge v3, v8, :cond_6

    .line 317
    aget-wide v17, v7, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    const-wide/16 v17, 0x0

    if-eqz v7, :cond_3

    if-eqz p5, :cond_2

    aget-wide v7, p5, v3

    cmpl-double v19, v7, v17

    if-nez v19, :cond_3

    move/from16 p3, v10

    goto :goto_3

    :cond_2
    move/from16 p3, v10

    goto :goto_3

    :cond_3
    if-eqz p5, :cond_4

    .line 320
    aget-wide v17, p5, v3

    .line 321
    :cond_4
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v19, v7, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v19, v7, v3

    add-double v17, v19, v17

    :goto_2
    move-wide/from16 v7, v17

    double-to-float v7, v7

    .line 322
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    move/from16 p3, v10

    aget-wide v9, v8, v3

    double-to-float v8, v9

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move/from16 v10, p3

    move v4, v7

    goto :goto_4

    :pswitch_1
    move/from16 v10, p3

    move v15, v7

    move v11, v8

    goto :goto_4

    :pswitch_2
    move/from16 v10, p3

    move v14, v7

    move v6, v8

    goto :goto_4

    :pswitch_3
    move v13, v7

    move v10, v8

    goto :goto_4

    :pswitch_4
    move/from16 v10, p3

    move v12, v7

    move v5, v8

    goto :goto_4

    :goto_3
    :pswitch_5
    move/from16 v10, p3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    move/from16 p3, v10

    .line 353
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 354
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_9

    .line 355
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_5

    .line 358
    :cond_7
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    :cond_8
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    div-float/2addr v11, v3

    add-float v10, p3, v11

    float-to-double v2, v2

    float-to-double v6, v4

    float-to-double v8, v10

    float-to-double v4, v5

    .line 367
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    add-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    .line 368
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :cond_9
    :goto_5
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v12, v2

    float-to-int v3, v12

    add-float/2addr v13, v2

    float-to-int v2, v13

    add-float/2addr v12, v14

    float-to-int v4, v12

    add-float/2addr v13, v15

    float-to-int v5, v13

    sub-int v6, v4, v3

    sub-int v7, v5, v2

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v8, 0x1

    :goto_7
    const/high16 v9, 0x40000000    # 2.0f

    .line 391
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 392
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 393
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    if-ne v9, v6, :cond_d

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    if-eq v9, v7, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v16, v8

    goto :goto_9

    :cond_d
    :goto_8
    const/16 v16, 0x1

    :goto_9
    if-eqz v16, :cond_e

    .line 397
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 398
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 399
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    .line 401
    :cond_e
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
