.class public final Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3654
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5200()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V
    .locals 0

    .line 3647
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3940
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3941
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6400(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-object p0
.end method

.method public clearBackgroundHexColor()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3994
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3995
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6600(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-object p0
.end method

.method public clearBody()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3795
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3796
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5800(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-object p0
.end method

.method public clearImageUrl()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3853
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3854
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6000(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-object p0
.end method

.method public clearTitle()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3724
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3725
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5500(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-object p0
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 3894
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 3955
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3968
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 3749
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 3811
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3825
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 3678
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 3883
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasBody()Z
    .locals 1

    .line 3738
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 3667
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3929
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3930
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6300(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3784
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3785
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5700(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3713
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3714
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5400(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3917
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3918
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6200(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3904
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3905
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6200(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3981
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3982
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6500(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 4009
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 4010
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6700(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3772
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3773
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5600(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3759
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3760
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5600(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3839
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3840
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5900(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3869
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3870
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$6100(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3701
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3702
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5300(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3688
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->copyOnWrite()V

    .line 3689
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->access$5300(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method
