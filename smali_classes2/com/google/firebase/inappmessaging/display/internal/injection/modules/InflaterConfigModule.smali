.class public Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;
.super Ljava/lang/Object;
.source "InflaterConfigModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Module;
.end annotation


# static fields
.field public static DISABLED_BG_FLAG:I = 0x50102

.field public static DISMISSIBLE_DIALOG_FLAG:I = 0x50122


# instance fields
.field private ENABLED_BG_FLAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10120

    .line 50
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->ENABLED_BG_FLAG:I

    return-void
.end method

.method public static configFor(Lcom/google/firebase/inappmessaging/model/MessageType;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 57
    sget-object p1, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule$1;->$SwitchMap$com$google$firebase$inappmessaging$model$MessageType:[I

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/MessageType;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "BANNER_PORTRAIT"

    return-object p0

    :pswitch_1
    const-string p0, "IMAGE_ONLY_PORTRAIT"

    return-object p0

    :pswitch_2
    const-string p0, "CARD_PORTRAIT"

    return-object p0

    :pswitch_3
    const-string p0, "MODAL_PORTRAIT"

    return-object p0

    .line 70
    :cond_0
    sget-object p1, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule$1;->$SwitchMap$com$google$firebase$inappmessaging$model$MessageType:[I

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/MessageType;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_1

    return-object v0

    :pswitch_4
    const-string p0, "BANNER_LANDSCAPE"

    return-object p0

    :pswitch_5
    const-string p0, "IMAGE_ONLY_LANDSCAPE"

    return-object p0

    :pswitch_6
    const-string p0, "CARD_LANDSCAPE"

    return-object p0

    :pswitch_7
    const-string p0, "MODAL_LANDSCAPE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public providesBannerLandscapeLayoutConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 3
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "BANNER_LANDSCAPE"
    .end annotation

    .line 249
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 250
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    .line 251
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v1, 0x3f666666    # 0.9f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x30

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->ENABLED_BG_FLAG:I

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 258
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 259
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method public providesBannerPortraitLayoutConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 3
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "BANNER_PORTRAIT"
    .end annotation

    .line 228
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 229
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    .line 230
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v1, 0x3f666666    # 0.9f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x30

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->ENABLED_BG_FLAG:I

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method public providesCardLandscapeConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 5
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "CARD_LANDSCAPE"
    .end annotation

    .line 185
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 188
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 189
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x11

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    sget v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->DISMISSIBLE_DIALOG_FLAG:I

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method public providesCardPortraitConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 5
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "CARD_PORTRAIT"
    .end annotation

    .line 205
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v1, 0x3f333333    # 0.7f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    .line 208
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxBodyHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3f666666    # 0.9f

    .line 211
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxBodyWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x11

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    sget v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->DISMISSIBLE_DIALOG_FLAG:I

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method providesDisplayMetrics(Landroid/app/Application;)Landroid/util/DisplayMetrics;
    .locals 2
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .line 87
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 89
    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 90
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public providesLandscapeImageLayoutConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 3
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "IMAGE_ONLY_LANDSCAPE"
    .end annotation

    .line 121
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 125
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x11

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    sget v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->DISABLED_BG_FLAG:I

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 131
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method public providesModalLandscapeConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 5
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "MODAL_LANDSCAPE"
    .end annotation

    .line 141
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 144
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3ecccccd    # 0.4f

    .line 145
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v1, 0x3f19999a    # 0.6f

    .line 146
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxBodyHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 147
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxBodyWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x11

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    sget v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->DISABLED_BG_FLAG:I

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method public providesModalPortraitConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 5
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "MODAL_PORTRAIT"
    .end annotation

    .line 163
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v1, 0x3f333333    # 0.7f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    .line 166
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    .line 167
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxBodyHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3f666666    # 0.9f

    .line 168
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 169
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxBodyWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x11

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    sget v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->DISABLED_BG_FLAG:I

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 174
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 175
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method

.method public providesPortraitImageLayoutConfig(Landroid/util/DisplayMetrics;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 3
    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/multibindings/StringKey;
        value = "IMAGE_ONLY_PORTRAIT"
    .end annotation

    .line 100
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->builder()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    .line 103
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/16 v0, 0x11

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    sget v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->DISABLED_BG_FLAG:I

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object p1

    return-object p1
.end method
