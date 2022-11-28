.class public final Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$CardMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1848
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1500()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V
    .locals 0

    .line 1841
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBackgroundHexColor()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2196
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2197
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearBody()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1989
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1990
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearLandscapeImageUrl()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2125
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2126
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearPortraitImageUrl()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2047
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2048
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2300(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearPrimaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2365
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2366
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearPrimaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2288
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2289
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3300(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearSecondaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2525
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2526
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$4200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearSecondaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2454
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2455
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public clearTitle()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1918
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1919
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-object p0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2170
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 1943
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    return-object v0
.end method

.method public getLandscapeImageUrl()Ljava/lang/String;
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLandscapeImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getLandscapeImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitImageUrl()Ljava/lang/String;
    .locals 1

    .line 2005
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPortraitImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 2315
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPrimaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 2238
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPrimaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 2479
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getSecondaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getSecondaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasPrimaryAction()Z
    .locals 1

    .line 2303
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasPrimaryAction()Z

    move-result v0

    return v0
.end method

.method public hasPrimaryActionButton()Z
    .locals 1

    .line 2226
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasPrimaryActionButton()Z

    move-result v0

    return v0
.end method

.method public hasSecondaryAction()Z
    .locals 1

    .line 2468
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasSecondaryAction()Z

    move-result v0

    return v0
.end method

.method public hasSecondaryActionButton()Z
    .locals 1

    .line 2382
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasSecondaryActionButton()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1979
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public mergePrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2353
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2354
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3500(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public mergePrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2276
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2277
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public mergeSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2514
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2515
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$4100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public mergeSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2440
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2441
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1907
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1908
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2183
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2184
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2211
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2212
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1966
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1953
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1954
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setLandscapeImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2110
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2111
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2500(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLandscapeImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2142
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2143
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPortraitImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2033
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2034
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPortraitImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2063
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2064
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$2400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2340
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2341
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setPrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2326
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2327
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setPrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2263
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2264
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public setPrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2249
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2250
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public setSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2502
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2503
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$4000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2490
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$4000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2425
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2426
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public setSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 2409
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 2410
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$3700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1895
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1896
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1882
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->copyOnWrite()V

    .line 1883
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->access$1600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method
