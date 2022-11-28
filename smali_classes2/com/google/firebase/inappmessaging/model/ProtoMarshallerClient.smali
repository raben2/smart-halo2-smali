.class public Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;
.super Ljava/lang/Object;
.source "ProtoMarshallerClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/model/Action$Builder;
    .locals 2

    .line 186
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/Action;->builder()Lcom/google/firebase/inappmessaging/model/Action$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getActionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/Action$Builder;->setActionUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Action$Builder;

    :cond_0
    return-object v0
.end method

.method private static decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/model/Action;
    .locals 3

    .line 162
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/model/Action$Builder;

    move-result-object p0

    .line 163
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/Button;->builder()Lcom/google/firebase/inappmessaging/model/Button$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/Button$Builder;->setButtonHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Button$Builder;

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->hasText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/Text;->builder()Lcom/google/firebase/inappmessaging/model/Text$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getText()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->setText(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->setHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;

    .line 177
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->build()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/model/Button$Builder;->setText(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/Button$Builder;

    .line 179
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Button$Builder;->build()Lcom/google/firebase/inappmessaging/model/Button;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/model/Action$Builder;->setButton(Lcom/google/firebase/inappmessaging/model/Button;)Lcom/google/firebase/inappmessaging/model/Action$Builder;

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/Action$Builder;->build()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p0

    return-object p0
.end method

.method private static decode(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/model/Button;
    .locals 2

    .line 148
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/Button;->builder()Lcom/google/firebase/inappmessaging/model/Button$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/Button$Builder;->setButtonHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Button$Builder;

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getText()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/Button$Builder;->setText(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/Button$Builder;

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Button$Builder;->build()Lcom/google/firebase/inappmessaging/model/Button;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .locals 3
    .param p0    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Content;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/model/InAppMessage;"
        }
    .end annotation

    const-string v0, "FirebaseInAppMessaging content cannot be null."

    .line 215
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseInAppMessaging campaign id cannot be null."

    .line 216
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseInAppMessaging campaign name cannot be null."

    .line 217
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoding message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    sget-object v1, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient$2;->$SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase:[I

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getMessageDetailsCase()Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    new-instance p0, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient$1;

    new-instance v0, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, v0, p1, p4}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient$1;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    return-object p0

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getCard()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->from(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->build(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/CardMessage;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getModal()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->from(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;->build(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/ModalMessage;

    move-result-object p0

    return-object p0

    .line 227
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getImageOnly()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->from(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;->build(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;

    move-result-object p0

    return-object p0

    .line 225
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getBanner()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->from(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;->build(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/BannerMessage;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;
    .locals 2

    .line 195
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/Text;->builder()Lcom/google/firebase/inappmessaging/model/Text$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->setHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->setText(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->build()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object p0

    return-object p0
.end method

.method private static from(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->builder()Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;->setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ImageData;->builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->build()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;->setImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/model/Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Action$Builder;->build()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;->setAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;->setBody(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;->setTitle(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    :cond_4
    return-object v0
.end method

.method private static from(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 112
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/CardMessage;->builder()Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setTitle(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setBody(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasPrimaryAction()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasPrimaryActionButton()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPrimaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPrimaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setPrimaryAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasSecondaryAction()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasSecondaryActionButton()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getSecondaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getSecondaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setSecondaryAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    .line 134
    :cond_6
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 136
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ImageData;->builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->build()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setPortraitImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 141
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ImageData;->builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->build()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->setLandscapeImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    :cond_8
    return-object v0
.end method

.method private static from(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->builder()Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ImageData;->builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->build()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;->setImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/model/Action$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/Action$Builder;->build()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;->setAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;

    :cond_1
    return-object v0
.end method

.method private static from(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ModalMessage;->builder()Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;->setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/ImageData;->builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;->build()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;->setImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;->setAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;->setBody(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;->setTitle(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    :cond_4
    return-object v0
.end method
